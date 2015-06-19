.class public Lcom/facebook/katana/MyTabHost$TabSpec;
.super Ljava/lang/Object;
.source "MyTabHost.java"
.field private mContentStrategy:Lcom/facebook/katana/MyTabHost$ContentStrategy;
.field private final mTag:Ljava/lang/String;
.field private final mView:Landroid/view/View;
.field final synthetic this$0:Lcom/facebook/katana/MyTabHost;
.method private constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->this$0:Lcom/facebook/katana/MyTabHost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mTag:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mView:Landroid/view/View;
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;Lcom/facebook/katana/MyTabHost$TabSpec;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/MyTabHost$TabSpec;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/view/View;)V
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/MyTabHost$TabSpec;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2(Lcom/facebook/katana/MyTabHost$TabSpec;)Lcom/facebook/katana/MyTabHost$ContentStrategy;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mContentStrategy:Lcom/facebook/katana/MyTabHost$ContentStrategy;
return-object v0
.end method
.method  getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mTag:Ljava/lang/String;
return-object v0
.end method
.method public setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
.registers 6
new-instance v0, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;
iget-object v1, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->this$0:Lcom/facebook/katana/MyTabHost;
iget-object v2, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mTag:Ljava/lang/String;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/katana/MyTabHost$IntentContentStrategy;-><init>(Lcom/facebook/katana/MyTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/facebook/katana/MyTabHost$IntentContentStrategy;)V
iput-object v0, p0, Lcom/facebook/katana/MyTabHost$TabSpec;->mContentStrategy:Lcom/facebook/katana/MyTabHost$ContentStrategy;
return-object p0
.end method