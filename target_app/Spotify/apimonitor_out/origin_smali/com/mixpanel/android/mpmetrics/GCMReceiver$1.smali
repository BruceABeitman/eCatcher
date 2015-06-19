.class final Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/GCMReceiver;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/GCMReceiver;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;->b:Lcom/mixpanel/android/mpmetrics/GCMReceiver;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/l;)V
    .registers 4

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;)V

    return-void
.end method
