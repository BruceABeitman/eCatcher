.class final Lcom/instagram/ui/menu/w;
.super Ljava/lang/Object;
.source "SimpleSwitchRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/menu/x;


# direct methods
.method constructor <init>(Lcom/instagram/ui/menu/x;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/menu/w;->a:Lcom/instagram/ui/menu/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/menu/w;->a:Lcom/instagram/ui/menu/x;

    iget-object v0, v0, Lcom/instagram/ui/menu/x;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    return-void
.end method
