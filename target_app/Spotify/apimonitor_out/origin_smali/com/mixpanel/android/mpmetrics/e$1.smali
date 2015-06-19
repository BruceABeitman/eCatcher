.class final Lcom/mixpanel/android/mpmetrics/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/e;->handleMessage(Landroid/os/Message;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/c;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/Survey;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/e;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/e;Lcom/mixpanel/android/mpmetrics/c;Lcom/mixpanel/android/mpmetrics/Survey;)V
    .registers 4

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/e$1;->c:Lcom/mixpanel/android/mpmetrics/e;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/e$1;->a:Lcom/mixpanel/android/mpmetrics/c;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/e$1;->b:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$1;->a:Lcom/mixpanel/android/mpmetrics/c;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/c;->a()Lcom/mixpanel/android/mpmetrics/x;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e$1;->b:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-interface {v0, v1}, Lcom/mixpanel/android/mpmetrics/x;->a(Lcom/mixpanel/android/mpmetrics/Survey;)V

    return-void
.end method
