.class final Lcom/crashlytics/android/internal/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/V;

.field private synthetic b:Z

.field private synthetic c:Lcom/crashlytics/android/internal/O;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/O;Lcom/crashlytics/android/internal/V;Z)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/internal/Q;->c:Lcom/crashlytics/android/internal/O;

    iput-object p2, p0, Lcom/crashlytics/android/internal/Q;->a:Lcom/crashlytics/android/internal/V;

    iput-boolean p3, p0, Lcom/crashlytics/android/internal/Q;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/Q;->c:Lcom/crashlytics/android/internal/O;

    iget-object v0, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    iget-object v1, p0, Lcom/crashlytics/android/internal/Q;->a:Lcom/crashlytics/android/internal/V;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/internal/U;->a(Lcom/crashlytics/android/internal/V;)V

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/Q;->b:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/crashlytics/android/internal/Q;->c:Lcom/crashlytics/android/internal/O;

    iget-object v0, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    invoke-interface {v0}, Lcom/crashlytics/android/internal/U;->d()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v0, "Crashlytics failed to record session event."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_14
.end method
