.class Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;
.super Ljava/lang/Object;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;-><init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/support/v4/view/ActionProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

.field final synthetic val$this$0:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->val$this$0:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    #getter for: Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->mLastRequestVisible:Z
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->access$100(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper$1;->this$1:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->wrappedSetVisible(Z)Landroid/view/MenuItem;

    :cond_1b
    return-void
.end method
