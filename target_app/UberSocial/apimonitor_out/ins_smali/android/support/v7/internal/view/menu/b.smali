.class  Landroid/support/v7/internal/view/menu/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/text/method/TransformationMethod;
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;
.field private b:Ljava/util/Locale;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
iput-object v0, p0, Landroid/support/v7/internal/view/menu/b;->b:Ljava/util/Locale;
return-void
.end method
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
.registers 5
if-eqz p1, :cond_d
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/b;->b:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
.registers 6
return-void
.end method