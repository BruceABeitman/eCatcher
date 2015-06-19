.class final Lcom/mixpanel/android/mpmetrics/GCMReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/GCMReceiver;
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/GCMReceiver;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver$2;->a:Lcom/mixpanel/android/mpmetrics/GCMReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/l;)V
    .registers 3

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/mixpanel/android/mpmetrics/o;->a()V

    return-void
.end method
