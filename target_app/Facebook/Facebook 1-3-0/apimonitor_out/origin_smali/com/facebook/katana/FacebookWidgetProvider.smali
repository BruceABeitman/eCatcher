.class public Lcom/facebook/katana/FacebookWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FacebookWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7

    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/facebook/katana/binding/AppSession;->widgetUpdate(Landroid/content/Context;)V

    :goto_9
    return-void

    :cond_a
    const v1, 0x7f080199

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080198

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/facebook/katana/binding/AppSession;->clearWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
