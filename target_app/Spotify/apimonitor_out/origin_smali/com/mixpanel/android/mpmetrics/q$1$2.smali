.class final Lcom/mixpanel/android/mpmetrics/q$1$2;
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

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->b:Lcom/mixpanel/android/mpmetrics/q$1;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->b:Lcom/mixpanel/android/mpmetrics/q$1;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/q;->a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    const-string v1, "$surveys"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->b:Lcom/mixpanel/android/mpmetrics/q$1;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/q$1;->c:Lcom/mixpanel/android/mpmetrics/q;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/q;->a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    const-string v1, "$collections"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q$1$2;->a:Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
