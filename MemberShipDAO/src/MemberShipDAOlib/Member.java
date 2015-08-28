package MemberShipDAOlib;

public class Member {
		public int member_id;
		public String member_acc;
		public String member_pw;
		/**
		 * @param member_id
		 * @param member_acc
		 * @param member_pw
		 */
		public Member(int member_id, String member_acc, String member_pw) {
			this.member_id = member_id;
			this.member_acc = member_acc;
			this.member_pw = member_pw;
		}
}
