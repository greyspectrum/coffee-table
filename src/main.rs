use wpactrl;

fn main() {
	let mut wpa = wpactrl::WpaCtrl::new().open().unwrap();
	println!("{}", wpa.request("LIST_NETWORKS").unwrap());
}
