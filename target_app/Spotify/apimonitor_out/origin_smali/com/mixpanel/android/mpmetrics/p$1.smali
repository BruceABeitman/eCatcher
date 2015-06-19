.class final Lcom/mixpanel/android/mpmetrics/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/x;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/p;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/p;Lcom/mixpanel/android/mpmetrics/x;)V
    .registers 3

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/p$1;->b:Lcom/mixpanel/android/mpmetrics/p;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/p$1;->a:Lcom/mixpanel/android/mpmetrics/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/Survey;)V
    .registers 3

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$1;->a:Lcom/mixpanel/android/mpmetrics/x;

    invoke-interface {v0, p1}, Lcom/mixpanel/android/mpmetrics/x;->a(Lcom/mixpanel/android/mpmetrics/Survey;)V

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$1;->b:Lcom/mixpanel/android/mpmetrics/p;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/l;->b(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/m;->b()V

    return-void
.end method
