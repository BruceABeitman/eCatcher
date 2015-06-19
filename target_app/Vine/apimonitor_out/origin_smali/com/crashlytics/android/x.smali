.class final Lcom/crashlytics/android/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/crashlytics/android/internal/aQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/internal/aQ;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/X;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/internal/aQ;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/X;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    :cond_e
    const/4 v1, 0x1

    :goto_f
    if-eqz v1, :cond_14

    :goto_11
    return-object p2

    :cond_12
    const/4 v1, 0x0

    goto :goto_f

    :cond_14
    move-object p2, v0

    goto :goto_11
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    const-string v0, "com.crashlytics.CrashSubmissionPromptTitle"

    iget-object v1, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/internal/aQ;

    iget-object v1, v1, Lcom/crashlytics/android/internal/aQ;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/X;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    const-string v0, "com.crashlytics.CrashSubmissionPromptMessage"

    iget-object v1, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/internal/aQ;

    iget-object v1, v1, Lcom/crashlytics/android/internal/aQ;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/X;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    const-string v0, "com.crashlytics.CrashSubmissionSendTitle"

    iget-object v1, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/internal/aQ;

    iget-object v1, v1, Lcom/crashlytics/android/internal/aQ;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/X;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    const-string v0, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    iget-object v1, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/internal/aQ;

    iget-object v1, v1, Lcom/crashlytics/android/internal/aQ;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/X;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    const-string v0, "com.crashlytics.CrashSubmissionCancelTitle"

    iget-object v1, p0, Lcom/crashlytics/android/X;->b:Lcom/crashlytics/android/internal/aQ;

    iget-object v1, v1, Lcom/crashlytics/android/internal/aQ;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/X;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
