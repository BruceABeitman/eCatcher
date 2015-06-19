.class Lcom/viewpagerindicator/TabPageIndicatorWithMarks$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->onAttachedToWindow()V
.end annotation


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$4;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$4;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$4;->a:Lcom/viewpagerindicator/TabPageIndicatorWithMarks;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
