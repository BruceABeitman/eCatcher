.class public final Lcom/spotify/mobile/android/util/at;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/util/List;
.field public static final b:Ljava/util/List;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const-string v1, "email"
aput-object v1, v0, v3
const-string v1, "user_birthday"
aput-object v1, v0, v4
const/4 v1, 0x2
const-string v2, "user_hometown"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/at;->a:Ljava/util/List;
new-array v0, v4, [Ljava/lang/String;
const-string v1, "publish_actions"
aput-object v1, v0, v3
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/at;->b:Ljava/util/List;
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/facebook/Session;->a()Z
move-result v1
if-eqz v1, :cond_11
invoke-virtual {v0}, Lcom/facebook/Session;->e()Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
const-string v0, ""
goto :goto_10
.end method
.method public static a(Landroid/app/Activity;)V
.registers 2
new-instance v0, Lcom/facebook/Session$OpenRequest;
invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V
invoke-static {v0}, Lcom/spotify/mobile/android/util/at;->a(Lcom/facebook/Session$OpenRequest;)V
return-void
.end method
.method public static a(Landroid/support/v4/app/Fragment;Lcom/facebook/ae;)V
.registers 3
new-instance v0, Lcom/facebook/Session$OpenRequest;
invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V
invoke-virtual {v0, p1}, Lcom/facebook/Session$OpenRequest;->b(Lcom/facebook/ae;)Lcom/facebook/Session$OpenRequest;
invoke-static {v0}, Lcom/spotify/mobile/android/util/at;->a(Lcom/facebook/Session$OpenRequest;)V
return-void
.end method
.method private static a(Lcom/facebook/Session$OpenRequest;)V
.registers 3
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/at;->a:Ljava/util/List;
invoke-virtual {p0, v1}, Lcom/facebook/Session$OpenRequest;->b(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
invoke-virtual {p0}, Lcom/facebook/Session$OpenRequest;->h()Lcom/facebook/Session$OpenRequest;
invoke-virtual {v0, p0}, Lcom/facebook/Session;->a(Lcom/facebook/Session$OpenRequest;)V
return-void
.end method
.method public static a(Ljava/util/List;)Z
.registers 5
const/4 v0, 0x0
const-string v1, "Checking if active session contains permissions:%s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v1
if-eqz v1, :cond_1d
invoke-virtual {v1}, Lcom/facebook/Session;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
move-result v0
:cond_1d
return v0
.end method
.method public static b(Landroid/app/Activity;)V
.registers 4
new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;
sget-object v1, Lcom/spotify/mobile/android/util/at;->b:Ljava/util/List;
invoke-direct {v0, p0, v1}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual {v1}, Lcom/facebook/Session;->a()Z
move-result v2
if-eqz v2, :cond_19
invoke-virtual {v0}, Lcom/facebook/Session$NewPermissionsRequest;->h()Lcom/facebook/Session$NewPermissionsRequest;
invoke-virtual {v1, v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session$NewPermissionsRequest;)V
:cond_19
return-void
.end method