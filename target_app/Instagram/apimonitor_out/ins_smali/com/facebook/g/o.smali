.class public final Lcom/facebook/g/o;
.super Ljava/lang/Object;
.source "ServerProtocol.java"
.field public static final a:Ljava/util/Collection;
.field public static final b:Ljava/util/Collection;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v4, [Ljava/lang/String;
const-string v1, "service_disabled"
aput-object v1, v0, v2
const-string v1, "AndroidAuthKillSwitchException"
aput-object v1, v0, v3
invoke-static {v0}, Lcom/facebook/g/t;->a([Ljava/lang/Object;)Ljava/util/Collection;
move-result-object v0
sput-object v0, Lcom/facebook/g/o;->a:Ljava/util/Collection;
new-array v0, v4, [Ljava/lang/String;
const-string v1, "access_denied"
aput-object v1, v0, v2
const-string v1, "OAuthAccessDeniedException"
aput-object v1, v0, v3
invoke-static {v0}, Lcom/facebook/g/t;->a([Ljava/lang/Object;)Ljava/util/Collection;
move-result-object v0
sput-object v0, Lcom/facebook/g/o;->b:Ljava/util/Collection;
return-void
.end method