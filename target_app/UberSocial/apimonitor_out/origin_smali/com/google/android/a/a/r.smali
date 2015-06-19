.class public Lcom/google/android/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PreferenceObfuscator"


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/android/a/a/p;

.field private d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/a/a/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/a/r;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/a/a/r;->c:Lcom/google/android/a/a/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    :cond_c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/a/a/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    :cond_c
    iget-object v0, p0, Lcom/google/android/a/a/r;->c:Lcom/google/android/a/a/p;

    invoke-interface {v0, p2, p1}, Lcom/google/android/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/r;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/a/a/r;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_9
    iget-object v1, p0, Lcom/google/android/a/a/r;->c:Lcom/google/android/a/a/p;

    invoke-interface {v1, v0, p1}, Lcom/google/android/a/a/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lcom/google/android/a/a/v; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object p2

    :cond_f
    :goto_f
    return-object p2

    :catch_10
    move-exception v0

    const-string v0, "PreferenceObfuscator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation error while reading preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
