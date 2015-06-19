.class  Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;
.super Ljava/lang/Object;
.source "Pop3Store.java"
.field public pipelining:Z
.field public stls:Z
.field final synthetic this$0:Lcom/fsck/k9/mail/store/Pop3Store;
.field public top:Z
.field public uidl:Z
.field public user:Z
.method constructor <init>(Lcom/fsck/k9/mail/store/Pop3Store;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
const-string v0, "STLS %b, TOP %b, USER %b, UIDL %b, PIPELINING %b"
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->stls:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->top:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->user:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x4
iget-boolean v3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method