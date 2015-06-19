.class final Lcom/mixpanel/android/mpmetrics/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/p;->a(Lcom/mixpanel/android/mpmetrics/x;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/x;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/p;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/p;Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/x;)V
    .registers 4

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/p$2;->c:Lcom/mixpanel/android/mpmetrics/p;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/p$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/p$2;->b:Lcom/mixpanel/android/mpmetrics/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/Survey;)V
    .registers 4

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$2;->a:Landroid/app/Activity;

    new-instance v1, Lcom/mixpanel/android/mpmetrics/p$2$1;

    invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/mpmetrics/p$2$1;-><init>(Lcom/mixpanel/android/mpmetrics/p$2;Lcom/mixpanel/android/mpmetrics/Survey;)V

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/f;->a(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V

    return-void
.end method
