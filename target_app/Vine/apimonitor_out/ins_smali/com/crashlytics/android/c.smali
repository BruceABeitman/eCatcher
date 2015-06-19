.class final Lcom/crashlytics/android/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Z
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/crashlytics/android/c;->a:Ljava/lang/String;
iput-boolean p2, p0, Lcom/crashlytics/android/c;->b:Z
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/crashlytics/android/c;->a:Ljava/lang/String;
invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->e(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ab
iget-boolean v0, p0, Lcom/crashlytics/android/c;->b:Z
if-eqz v0, :cond_ab
const-string v0, "Crashlytics"
const-string v1, "."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     |  | "
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     |  |"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     |  |"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".   \\ |  | /"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".    \\    /"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     \\  /"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".      \\/"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, "."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, "This app relies on Crashlytics. Configure your build environment here: "
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, "https://crashlytics.com/register/%s/android/%s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
aput-object p2, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, "."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".      /\\"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     /  \\"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".    /    \\"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".   / |  | \\"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     |  |"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     |  |"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, ".     |  |"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Crashlytics"
const-string v1, "."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;
invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
throw v0
:cond_ab
iget-boolean v0, p0, Lcom/crashlytics/android/c;->b:Z
if-nez v0, :cond_be
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v0
invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Configured not to require a build ID."
invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_be
return-void
.end method