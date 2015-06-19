.class public final Lcom/userzoom/z;
.super Ljava/lang/Object;
.field public static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/userzoom/z;->a:Z
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
sget-boolean v0, Lcom/userzoom/z;->a:Z
if-eqz v0, :cond_7
invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_7
return-void
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
sget-boolean v0, Lcom/userzoom/z;->a:Z
if-eqz v0, :cond_7
invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_7
return-void
.end method