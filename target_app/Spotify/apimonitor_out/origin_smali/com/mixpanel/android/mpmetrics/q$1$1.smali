.class final Lcom/mixpanel/android/mpmetrics/q$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/q$1;->a(Lcom/mixpanel/android/mpmetrics/Survey;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/Survey;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/q$1;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/q$1;Lcom/mixpanel/android/mpmetrics/Survey;)V
    .registers 3

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/q$1$1;->b:Lcom/mixpanel/android/mpmetrics/q$1;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/q$1$1;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1$1;->b:Lcom/mixpanel/android/mpmetrics/q$1;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/q;->a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/q$1$1;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q$1$1;->b:Lcom/mixpanel/android/mpmetrics/q$1;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/q$1;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/o;->a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    return-void
.end method
