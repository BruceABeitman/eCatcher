.class public final Lcom/ford/syncV4/util/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected static a:Ljava/util/Vector;
.field private static b:Z
.field private static c:Z
.field private static d:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/ford/syncV4/util/c;->b:Z
sput-boolean v0, Lcom/ford/syncV4/util/c;->c:Z
sput-boolean v0, Lcom/ford/syncV4/util/c;->d:Z
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
sput-object v0, Lcom/ford/syncV4/util/c;->a:Ljava/util/Vector;
return-void
.end method
.method public static a()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/ford/syncV4/util/c;->b:Z
sput-boolean v0, Lcom/ford/syncV4/util/c;->c:Z
sput-boolean v0, Lcom/ford/syncV4/util/c;->d:Z
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
invoke-static {p0}, Lcom/ford/syncV4/util/c;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ford/syncV4/util/c;->e(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
sget-boolean v2, Lcom/ford/syncV4/util/c;->b:Z
if-eqz v2, :cond_1b
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_1b
const-string v1, "SyncProxy"
invoke-static {v1, v0}, Lcom/ford/syncV4/util/NativeLogTool;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
invoke-static {p0}, Lcom/ford/syncV4/util/c;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz p1, :cond_39
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " Exception String: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ford/syncV4/util/c;->e(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
:goto_29
sget-boolean v2, Lcom/ford/syncV4/util/c;->b:Z
if-eqz v2, :cond_38
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_38
const-string v0, "SyncProxy"
invoke-static {v0, v1, p1}, Lcom/ford/syncV4/util/NativeLogTool;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_38
return-void
:cond_39
invoke-static {v1}, Lcom/ford/syncV4/util/c;->e(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
goto :goto_29
.end method
.method public static b()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x1
sput-boolean v0, Lcom/ford/syncV4/util/c;->b:Z
sput-boolean v1, Lcom/ford/syncV4/util/c;->c:Z
sput-boolean v1, Lcom/ford/syncV4/util/c;->d:Z
return-void
.end method
.method public static b(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
invoke-static {p0}, Lcom/ford/syncV4/util/c;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ford/syncV4/util/c;->e(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
sget-boolean v2, Lcom/ford/syncV4/util/c;->d:Z
if-eqz v2, :cond_1b
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_1b
const-string v1, "SyncProxy"
invoke-static {v1, v0}, Lcom/ford/syncV4/util/NativeLogTool;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public static c(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
invoke-static {p0}, Lcom/ford/syncV4/util/c;->e(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
sget-boolean v1, Lcom/ford/syncV4/util/c;->d:Z
if-eqz v1, :cond_17
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_17
const-string v0, "SyncProxy"
invoke-static {v0, p0}, Lcom/ford/syncV4/util/NativeLogTool;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_17
return-void
.end method
.method public static c()Z
.registers 1
sget-boolean v0, Lcom/ford/syncV4/util/c;->c:Z
if-eqz v0, :cond_a
sget-boolean v0, Lcom/ford/syncV4/util/c;->d:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private static d(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-eqz p0, :cond_11
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "2.2: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_11
return-object p0
.end method
.method private static e(Ljava/lang/String;)Ljava/lang/Boolean;
.registers 2
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->a()Z
invoke-static {p0}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method