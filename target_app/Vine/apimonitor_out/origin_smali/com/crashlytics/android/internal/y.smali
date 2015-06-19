.class final Lcom/crashlytics/android/internal/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/crashlytics/android/internal/K;

.field private final b:Lcom/crashlytics/android/internal/U;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/K;Lcom/crashlytics/android/internal/U;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/internal/Y;->a:Lcom/crashlytics/android/internal/K;

    iput-object p2, p0, Lcom/crashlytics/android/internal/Y;->b:Lcom/crashlytics/android/internal/U;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    const-string v0, "Performing time based analytics file roll over."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/internal/Y;->a:Lcom/crashlytics/android/internal/K;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/K;->a()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/crashlytics/android/internal/Y;->b:Lcom/crashlytics/android/internal/U;

    invoke-interface {v0}, Lcom/crashlytics/android/internal/U;->c()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v0, "Crashlytics failed to roll over session analytics file"

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_12
.end method
