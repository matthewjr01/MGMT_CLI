import java.security.PublicKey;

public class WebUser {

    public String UName;
    public int OMemberID;
    public int OWarn_Points;
    public String UMember_IP;
    public String UMember_EMAIL;

    public WebUser(String UserName, int MemberID, int Curr_Points, String Member_IP, String Email){
        this.OMemberID = MemberID;
        this.UMember_IP = Member_IP;
        this.OWarn_Points = Curr_Points;
        this.UName = UserName;
        this.UMember_EMAIL = Email;
    }
}
