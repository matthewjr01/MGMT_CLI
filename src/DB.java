import java.sql.*;

public class DB {

    public static Boolean IS_WHITELISTED(String UName, String Hex){
        try{
            Class.forName(Settings.DBDRIVER);
            Connection conn = DriverManager.getConnection(Settings.WL_DBURL, Settings.WL_DBUSER, Settings.WL_DBPASS);

            String Query = "SELECT * FROM "+ Settings.WL_DBTABLE_WL;

            Statement st = conn.createStatement();

            ResultSet rs = st.executeQuery(Query);

            while (rs.next()){
                String SteamHex = (String) rs.getString("SteamHex");
                String Name = (String) rs.getString("Name");
                int Perm_Level = (int) rs.getInt("PermLevel");
                int Is_WhiteListed = (int) rs.getInt("IsWhiteListed");
                Boolean flag = false;

                if(!flag){
                    flag = SteamHex.matches("");
                    flag = SteamHex.matches(" ");
                    flag = SteamHex != "" & Name.matches("");
                    flag = SteamHex.isEmpty();
                    flag = Is_WhiteListed >= 2;
                    flag = Is_WhiteListed < 0;
                }

                if(UName != null){
                    if(Name.matches(UName)){
                        if(Is_WhiteListed == 1){
                            return true;
                        }
                    }
                }

                if(UName == null & Hex != null){
                    if(Hex.matches(SteamHex)){
                        System.out.println("Found Whitelisted User: "+ Name + " :" + SteamHex);
                    }
                }

                if(UName == null & Hex == null){
                    flag = true;
                    System.out.println("CANNOT PROVIDE RESULTS INPUT VARS ARE NULL!!!");
                    return null;
                }

                if(flag){
                    System.out.println(Settings.RED + "ERROR FLAG TRIGGERED IN GET USER WHITELIST!!!" + Settings.RESET);
                    return null;
                }
            }
            st.close();

        }catch (Exception ex){
            System.out.println("Error in DB_IS_WHITELISTED: "+ ex);
        }
        return true;
    }


    public static Boolean GET_WEBUSER(){
        try{
            Class.forName(Settings.DBDRIVER);
            Connection conn = DriverManager.getConnection(Settings.WF_DBURL, Settings.WF_DBUSER, Settings.WF_DBPASS);
            WebUser user;

            String Query = "SELECT * FROM "+ Settings.WF_DBTABLE_MB;

            Statement st = conn.createStatement();

            ResultSet rs = st.executeQuery(Query);

            while (rs.next()){
                String Name = (String) rs.getString("name");
                int MemberID = (int) rs.getInt("MemberID");
                int warn_level = (int) rs.getInt("warn_level");
                String ip_address = (String) rs.getString("ip_address");
                String Member_Email = (String) rs.getString("email");

                user = new WebUser(Name, MemberID, warn_level, ip_address, Member_Email);

                Settings.Web_Members.add(user);
                System.out.println("ADDED WEB MEMBER: "+ user.UName);
            }
            st.close();

        }catch (Exception ex){
            System.out.println("Error in WEB MEMBER GET: "+ ex);
        }
        return true;
    }

    public static void ADD_WHITELIST_USER(String SteamHex, String UNAME, int PermLevel){
        try{
            Class.forName(Settings.DBDRIVER);
            Connection conn = DriverManager.getConnection(Settings.WL_DBURL, Settings.WL_DBUSER, Settings.WL_DBPASS);

            String Query = "insert into "+ Settings.WL_DBTABLE_WL+ " (SteamHex, Name, PermLevel, IsWhiteListed)" + "values (?, ?, ?, ?)";

            PreparedStatement preparedStatement = conn.prepareStatement(Query);

            preparedStatement.setString(1, SteamHex);
            preparedStatement.setString(2, UNAME);
            preparedStatement.setInt(3, PermLevel);
            preparedStatement.setInt(4, 1);


            preparedStatement.execute();

            conn.close();

        }catch (Exception ex){
            System.out.println("Error in DB_ADD_WHITELIST_USER: "+ ex);
        }
        return;
    }

    public static void REMOVE_WHITELIST_USER(String UNAME){
        try{
            Class.forName(Settings.DBDRIVER);
            Connection conn = DriverManager.getConnection(Settings.WL_DBURL, Settings.WL_DBUSER, Settings.WL_DBPASS);

            String Query = "delete from "+ Settings.WL_DBTABLE_WL+ "where" + " (Name)" + "values (?)";

            PreparedStatement preparedStatement = conn.prepareStatement(Query);

            preparedStatement.setString(1, UNAME);



            preparedStatement.execute();

            System.out.println("REMOVED WHITELISTED USER: "+ UNAME);

            conn.close();

        }catch (Exception ex){
            System.out.println("Error in DB_REMOVE_WHITELIST_USER: "+ ex);
        }
        return;
    }


}
