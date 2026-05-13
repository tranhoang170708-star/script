function htb(e) {
    let t = "";
    for (let r = 0; r < e.length; r += 2) t += String.fromCharCode(parseInt(e.substr(r, 2), 16));
    return t;
}

async function onResponse(e, t, n) {
    if (!n) return n;
    const r = t.url;
    
    // Ép hiện chữ thông báo màu xanh ngay khi vào game
    if (r.includes("CheckHackBehavior") || r.includes("GetMatchmakingBlacklist") || r.includes("fileinfo")) {
        n.statusCode = 200;
        n.body = "[c][b][00FF00]PREDATOR XITS BYPASS SUCCESS";
        return n;
    }

    // Bỏ qua kiểm tra GetBackpack (Bypass REGISTERED)
    if (r.includes("GetBackpack")) {
        n.statusCode = 200;
        n.headers["Content-Type"] = "text/html";
        n.body = "SUCCESS"; // Trả về thành công thay vì NOT REGISTERED
        return n;
    }

    return n;
}
