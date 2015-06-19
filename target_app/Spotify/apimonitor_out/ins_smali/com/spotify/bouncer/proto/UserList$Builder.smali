.class public final Lcom/spotify/bouncer/proto/UserList$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"
.field public count:Ljava/lang/Long;
.field public include_requesting_user:Ljava/lang/Boolean;
.field public usernames:Ljava/util/List;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/spotify/bouncer/proto/UserList;)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V
if-nez p1, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p1, Lcom/spotify/bouncer/proto/UserList;->usernames:Ljava/util/List;
invoke-static {v0}, Lcom/spotify/bouncer/proto/UserList;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList$Builder;->usernames:Ljava/util/List;
iget-object v0, p1, Lcom/spotify/bouncer/proto/UserList;->count:Ljava/lang/Long;
iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList$Builder;->count:Ljava/lang/Long;
iget-object v0, p1, Lcom/spotify/bouncer/proto/UserList;->include_requesting_user:Ljava/lang/Boolean;
iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList$Builder;->include_requesting_user:Ljava/lang/Boolean;
goto :goto_5
.end method
.method public final build()Lcom/spotify/bouncer/proto/UserList;
.registers 3
new-instance v0, Lcom/spotify/bouncer/proto/UserList;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/spotify/bouncer/proto/UserList;-><init>(Lcom/spotify/bouncer/proto/UserList$Builder;B)V
return-object v0
.end method
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
.registers 2
invoke-virtual {p0}, Lcom/spotify/bouncer/proto/UserList$Builder;->build()Lcom/spotify/bouncer/proto/UserList;
move-result-object v0
return-object v0
.end method
.method public final count(Ljava/lang/Long;)Lcom/spotify/bouncer/proto/UserList$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/UserList$Builder;->count:Ljava/lang/Long;
return-object p0
.end method
.method public final include_requesting_user(Ljava/lang/Boolean;)Lcom/spotify/bouncer/proto/UserList$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/bouncer/proto/UserList$Builder;->include_requesting_user:Ljava/lang/Boolean;
return-object p0
.end method
.method public final usernames(Ljava/util/List;)Lcom/spotify/bouncer/proto/UserList$Builder;
.registers 3
invoke-static {p1}, Lcom/spotify/bouncer/proto/UserList$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/bouncer/proto/UserList$Builder;->usernames:Ljava/util/List;
return-object p0
.end method