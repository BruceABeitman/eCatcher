.class Lcom/twidroid/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/appwidget/AppWidgetManager;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/widget/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twidroid/widget/i;->b:Landroid/appwidget/AppWidgetManager;

    iput p3, p0, Lcom/twidroid/widget/i;->c:I

    return-void
.end method
