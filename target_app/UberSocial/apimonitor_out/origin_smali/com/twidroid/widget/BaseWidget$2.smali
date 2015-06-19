.class Lcom/twidroid/widget/BaseWidget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/widget/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Z)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/widget/BaseWidget;


# direct methods
.method constructor <init>(Lcom/twidroid/widget/BaseWidget;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/widget/BaseWidget$2;->b:Lcom/twidroid/widget/BaseWidget;

    iput p2, p0, Lcom/twidroid/widget/BaseWidget$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/widget/BaseWidget$2;->b:Lcom/twidroid/widget/BaseWidget;

    sget-object v1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    iget v2, p0, Lcom/twidroid/widget/BaseWidget$2;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;II)V

    return-void
.end method
