.class final Lcom/mixpanel/android/surveys/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/surveys/c$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mixpanel/android/surveys/c$2;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/surveys/c$2;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mixpanel/android/surveys/c$2$1;->b:Lcom/mixpanel/android/surveys/c$2;

    iput-object p2, p0, Lcom/mixpanel/android/surveys/c$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mixpanel/android/surveys/c$2$1;->b:Lcom/mixpanel/android/surveys/c$2;

    iget-object v0, v0, Lcom/mixpanel/android/surveys/c$2;->b:Lcom/mixpanel/android/surveys/c;

    iget-object v0, v0, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/surveys/c$2$1;->b:Lcom/mixpanel/android/surveys/c$2;

    iget-object v1, v1, Lcom/mixpanel/android/surveys/c$2;->b:Lcom/mixpanel/android/surveys/c;

    invoke-static {v1}, Lcom/mixpanel/android/surveys/c;->a(Lcom/mixpanel/android/surveys/c;)Lcom/mixpanel/android/mpmetrics/w;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/surveys/c$2$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mixpanel/android/surveys/b;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V

    return-void
.end method
