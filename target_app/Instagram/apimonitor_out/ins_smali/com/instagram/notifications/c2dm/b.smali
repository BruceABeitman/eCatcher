.class final Lcom/instagram/notifications/c2dm/b;
.super Lcom/instagram/api/k/a/c;
.source "IgPushRegistrationService.java"
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Lcom/instagram/common/q/b/g;)V
.registers 4
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
iput-object p1, p0, Lcom/instagram/notifications/c2dm/b;->b:Ljava/lang/String;
invoke-virtual {p2}, Lcom/instagram/common/q/b/g;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/notifications/c2dm/b;->c:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Lcom/instagram/common/q/b/g;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/notifications/c2dm/b;-><init>(Ljava/lang/String;Lcom/instagram/common/q/b/g;)V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "device_token"
iget-object v1, p0, Lcom/instagram/notifications/c2dm/b;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "device_type"
iget-object v1, p0, Lcom/instagram/notifications/c2dm/b;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "push/register/"
return-object v0
.end method