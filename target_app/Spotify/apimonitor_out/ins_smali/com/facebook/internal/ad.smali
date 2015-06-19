.class public final Lcom/facebook/internal/ad;
.super Ljava/lang/Object;
.source "SourceFile"
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
invoke-static {v0}, Lcom/facebook/internal/ai;->a([Ljava/lang/Object;)Ljava/util/Collection;
move-result-object v0
sput-object v0, Lcom/facebook/internal/ad;->a:Ljava/util/Collection;
new-array v0, v4, [Ljava/lang/String;
const-string v1, "access_denied"
aput-object v1, v0, v2
const-string v1, "OAuthAccessDeniedException"
aput-object v1, v0, v3
invoke-static {v0}, Lcom/facebook/internal/ai;->a([Ljava/lang/Object;)Ljava/util/Collection;
move-result-object v0
sput-object v0, Lcom/facebook/internal/ad;->b:Ljava/util/Collection;
return-void
.end method
.method public static final a()Ljava/lang/String;
.registers 4
const-string v0, "m.%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {}, Lcom/facebook/ah;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final b()Ljava/lang/String;
.registers 4
const-string v0, "https://graph.%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {}, Lcom/facebook/ah;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final c()Ljava/lang/String;
.registers 4
const-string v0, "https://graph-video.%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {}, Lcom/facebook/ah;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final d()Ljava/lang/String;
.registers 4
const-string v0, "https://api.%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {}, Lcom/facebook/ah;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final e()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/facebook/ah;->g()Z
move-result v0
if-eqz v0, :cond_9
const-string v0, "v1.0"
:goto_8
return-object v0
:cond_9
const-string v0, "v2.0"
goto :goto_8
.end method