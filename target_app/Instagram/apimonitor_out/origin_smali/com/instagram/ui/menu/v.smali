.class final Lcom/instagram/ui/menu/v;
.super Ljava/lang/Object;
.source "SimpleSwitchRowViewBinder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/menu/aa;


# direct methods
.method constructor <init>(Lcom/instagram/ui/menu/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/menu/v;->a:Lcom/instagram/ui/menu/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/ui/menu/v;->a:Lcom/instagram/ui/menu/aa;

    invoke-virtual {v0, p2}, Lcom/instagram/ui/menu/aa;->a(Z)V

    iget-object v0, p0, Lcom/instagram/ui/menu/v;->a:Lcom/instagram/ui/menu/aa;

    invoke-virtual {v0}, Lcom/instagram/ui/menu/aa;->d()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
