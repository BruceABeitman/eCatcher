.class final Lcom/blackberry/ids/IDS$6;
.super Ljava/lang/Object;
.source "IDS.java"
.implements Lcom/blackberry/ids/IDS$AzRequestHelper;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final addParams(Lcom/blackberry/ids/PostBody;)Lcom/blackberry/ids/PostBody;
.registers 5
const-string v0, "grant_type"
const-string v1, "refresh_token"
invoke-virtual {p1, v0, v1}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v0
const-string v1, "refresh_token"
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v2
invoke-virtual {v2}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/blackberry/ids/PostBody;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/blackberry/ids/PostBody;
move-result-object v0
return-object v0
.end method
.method public final buildUri(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
.registers 3
const-string v0, "refreshToken"
invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
return-object v0
.end method
.method public final failure(IILjava/lang/String;I)V
.registers 9
const-string v0, "do_refresh_token request_id=%d failed, result=%d info=%s"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
aput-object p3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public final success(Ljava/lang/String;Ljava/util/Map;)V
.registers 6
const-string v0, "refresh_token"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/blackberry/ids/IDS;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, ":"
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
aget-object v1, v0, v1
const/4 v2, 0x1
aget-object v0, v0, v2
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v2
invoke-virtual {v2, p1, v1, v0}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method