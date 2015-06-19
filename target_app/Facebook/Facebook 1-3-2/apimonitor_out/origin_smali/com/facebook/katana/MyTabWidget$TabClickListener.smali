.class Lcom/facebook/katana/MyTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "MyTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/MyTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/facebook/katana/MyTabWidget;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/MyTabWidget;I)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->this$0:Lcom/facebook/katana/MyTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->mTabIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/MyTabWidget;ILcom/facebook/katana/MyTabWidget$TabClickListener;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/MyTabWidget$TabClickListener;-><init>(Lcom/facebook/katana/MyTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->this$0:Lcom/facebook/katana/MyTabWidget;

    #getter for: Lcom/facebook/katana/MyTabWidget;->mSelectionChangedListener:Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/facebook/katana/MyTabWidget;->access$0(Lcom/facebook/katana/MyTabWidget;)Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/facebook/katana/MyTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/MyTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    return-void
.end method
