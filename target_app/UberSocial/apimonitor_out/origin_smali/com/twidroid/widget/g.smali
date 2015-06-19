.class public Lcom/twidroid/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/appwidget/AppWidgetManager;

.field c:I

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/widget/g;->d:Z

    iput-object p1, p0, Lcom/twidroid/widget/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twidroid/widget/g;->b:Landroid/appwidget/AppWidgetManager;

    iput p3, p0, Lcom/twidroid/widget/g;->c:I

    iput-boolean p4, p0, Lcom/twidroid/widget/g;->d:Z

    return-void
.end method
