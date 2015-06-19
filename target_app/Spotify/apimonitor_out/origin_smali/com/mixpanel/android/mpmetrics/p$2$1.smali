.class final Lcom/mixpanel/android/mpmetrics/p$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/p$2;->a(Lcom/mixpanel/android/mpmetrics/Survey;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/Survey;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/p$2;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/p$2;Lcom/mixpanel/android/mpmetrics/Survey;)V
    .registers 3

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;I)V
    .registers 6

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p$2;->c:Lcom/mixpanel/android/mpmetrics/p;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->e(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p$2;->c:Lcom/mixpanel/android/mpmetrics/p;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p$2;->c:Lcom/mixpanel/android/mpmetrics/p;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0, p2}, Lcom/mixpanel/android/mpmetrics/l;->a(Lcom/mixpanel/android/mpmetrics/l;I)I

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p$2;->c:Lcom/mixpanel/android/mpmetrics/p;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/p$2;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/l;->b(Lcom/mixpanel/android/mpmetrics/l;I)I

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_39

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->b:Lcom/mixpanel/android/mpmetrics/p$2;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p$2;->b:Lcom/mixpanel/android/mpmetrics/x;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p$2$1;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-interface {v0, v1}, Lcom/mixpanel/android/mpmetrics/x;->a(Lcom/mixpanel/android/mpmetrics/Survey;)V

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method
