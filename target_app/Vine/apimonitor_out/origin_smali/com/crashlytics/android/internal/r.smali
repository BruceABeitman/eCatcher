.class final Lcom/crashlytics/android/internal/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/aK;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/crashlytics/android/internal/O;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/O;Lcom/crashlytics/android/internal/aK;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/internal/R;->c:Lcom/crashlytics/android/internal/O;

    iput-object p2, p0, Lcom/crashlytics/android/internal/R;->a:Lcom/crashlytics/android/internal/aK;

    iput-object p3, p0, Lcom/crashlytics/android/internal/R;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/R;->c:Lcom/crashlytics/android/internal/O;

    iget-object v0, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    iget-object v1, p0, Lcom/crashlytics/android/internal/R;->a:Lcom/crashlytics/android/internal/aK;

    iget-object v2, p0, Lcom/crashlytics/android/internal/R;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/U;->a(Lcom/crashlytics/android/internal/aK;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v0, "Crashlytics failed to set analytics settings data."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_b
.end method
