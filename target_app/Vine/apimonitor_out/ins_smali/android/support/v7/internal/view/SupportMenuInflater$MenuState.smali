.class  Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"
.field private static final defaultGroupId:I = 0x0
.field private static final defaultItemCategory:I = 0x0
.field private static final defaultItemCheckable:I = 0x0
.field private static final defaultItemChecked:Z = false
.field private static final defaultItemEnabled:Z = true
.field private static final defaultItemId:I = 0x0
.field private static final defaultItemOrder:I = 0x0
.field private static final defaultItemVisible:Z = true
.field private groupCategory:I
.field private groupCheckable:I
.field private groupEnabled:Z
.field private groupId:I
.field private groupOrder:I
.field private groupVisible:Z
.field private itemActionProvider:Landroid/support/v4/view/ActionProvider;
.field private itemActionProviderClassName:Ljava/lang/String;
.field private itemActionViewClassName:Ljava/lang/String;
.field private itemActionViewLayout:I
.field private itemAdded:Z
.field private itemAlphabeticShortcut:C
.field private itemCategoryOrder:I
.field private itemCheckable:I
.field private itemChecked:Z
.field private itemEnabled:Z
.field private itemIconResId:I
.field private itemId:I
.field private itemListenerMethodName:Ljava/lang/String;
.field private itemNumericShortcut:C
.field private itemShowAsAction:I
.field private itemTitle:Ljava/lang/CharSequence;
.field private itemTitleCondensed:Ljava/lang/CharSequence;
.field private itemVisible:Z
.field private menu:Landroid/view/Menu;
.field final synthetic this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
.method public constructor <init>(Landroid/support/v7/internal/view/SupportMenuInflater;Landroid/view/Menu;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;
invoke-virtual {p0}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->resetGroup()V
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;)Landroid/support/v4/view/ActionProvider;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
return-object v0
.end method
.method private getShortcut(Ljava/lang/String;)C
.registers 3
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
return v0
:cond_4
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
goto :goto_3
.end method
.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
:try_start_0
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-static {v3}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17
move-result-object v3
:goto_16
return-object v3
:catch_17
move-exception v2
const-string v3, "SupportMenuInflater"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Cannot instantiate class: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v3, 0x0
goto :goto_16
.end method
.method private setItem(Landroid/view/MenuItem;)V
.registers 9
const/4 v4, 0x1
iget-boolean v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z
invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
move-result-object v3
iget-boolean v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
move-result-object v3
iget-boolean v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
move-result-object v5
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I
if-lt v3, v4, :cond_54
move v3, v4
:goto_18
invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;
move-result-object v3
iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v3
iget v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v3
iget-char v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;
move-result-object v3
iget-char v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I
if-ltz v3, :cond_3c
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I
invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
:cond_3c
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;
if-eqz v3, :cond_66
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-static {v3}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z
move-result v3
if-eqz v3, :cond_56
new-instance v3, Ljava/lang/IllegalStateException;
const-string v4, "The android:onClick attribute cannot be used within a restricted context"
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_54
const/4 v3, 0x0
goto :goto_18
:cond_56
new-instance v3, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;
invoke-static {v5}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$400(Landroid/support/v7/internal/view/SupportMenuInflater;)Ljava/lang/Object;
move-result-object v5
iget-object v6, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;
invoke-direct {v3, v5, v6}, Landroid/support/v7/internal/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_66
instance-of v3, p1, Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v3, :cond_ae
move-object v3, p1
check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;
move-object v2, v3
:goto_6e
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I
const/4 v5, 0x2
if-lt v3, v5, :cond_7d
instance-of v3, p1, Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v3, :cond_b0
move-object v3, p1
check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;
invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V
:goto_7d
:cond_7d
const/4 v1, 0x0
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
if-eqz v3, :cond_98
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
invoke-static {}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$500()[Ljava/lang/Class;
move-result-object v4
iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
invoke-static {v5}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$600(Landroid/support/v7/internal/view/SupportMenuInflater;)[Ljava/lang/Object;
move-result-object v5
invoke-direct {p0, v3, v4, v5}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
const/4 v1, 0x1
:cond_98
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
if-lez v3, :cond_a4
if-nez v1, :cond_bb
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
const/4 v1, 0x1
:goto_a4
:cond_a4
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
if-eqz v3, :cond_ad
iget-object v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
:cond_ad
return-void
:cond_ae
const/4 v2, 0x0
goto :goto_6e
:cond_b0
instance-of v3, p1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
if-eqz v3, :cond_7d
move-object v3, p1
check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
invoke-virtual {v3, v4}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V
goto :goto_7d
:cond_bb
const-string v3, "SupportMenuInflater"
const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."
invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_a4
.end method
.method public addItem()V
.registers 6
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z
iget-object v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;
iget v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I
iget v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemId:I
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I
iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;
invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V
return-void
.end method
.method public addSubMenuItem()Landroid/view/SubMenu;
.registers 7
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z
iget-object v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;
iget v2, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I
iget v3, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemId:I
iget v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I
iget-object v5, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;
invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;
move-result-object v1
invoke-direct {p0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V
return-object v0
.end method
.method public hasAddedItem()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z
return v0
.end method
.method public readGroup(Landroid/util/AttributeSet;)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-static {v1}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;
move-result-object v1
sget-object v2, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I
invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I
const/4 v1, 0x3
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCategory:I
const/4 v1, 0x4
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupOrder:I
const/4 v1, 0x5
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I
const/4 v1, 0x2
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public readItem(Landroid/util/AttributeSet;)V
.registers 11
const/16 v8, 0xb
const/4 v5, 0x1
const/4 v6, 0x0
iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-static {v4}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$100(Landroid/support/v7/internal/view/SupportMenuInflater;)Landroid/content/Context;
move-result-object v4
sget-object v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I
invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v4, 0x2
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemId:I
const/4 v4, 0x5
iget v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCategory:I
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
const/4 v4, 0x6
iget v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupOrder:I
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
const/high16 v4, -0x1
and-int/2addr v4, v1
const v7, 0xffff
and-int/2addr v7, v3
or-int/2addr v4, v7
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I
const/4 v4, 0x7
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;
const/16 v4, 0x8
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;
invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemIconResId:I
const/16 v4, 0x9
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C
move-result v4
iput-char v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C
const/16 v4, 0xa
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C
move-result v4
iput-char v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C
invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v4
if-eqz v4, :cond_d7
invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
if-eqz v4, :cond_d5
move v4, v5
:goto_69
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I
:goto_6b
const/4 v4, 0x3
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemChecked:Z
const/4 v4, 0x4
iget-boolean v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemVisible:Z
iget-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z
invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemEnabled:Z
const/16 v4, 0xd
const/4 v7, -0x1
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemShowAsAction:I
const/16 v4, 0xc
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;
const/16 v4, 0xe
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
const/16 v4, 0xf
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
const/16 v4, 0x10
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;
iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;
if-eqz v4, :cond_dc
move v2, v5
:goto_b1
if-eqz v2, :cond_de
iget v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
if-nez v4, :cond_de
iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
if-nez v4, :cond_de
iget-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;
invoke-static {}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$200()[Ljava/lang/Class;
move-result-object v5
iget-object v7, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/internal/view/SupportMenuInflater;
#getter for: Landroid/support/v7/internal/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
invoke-static {v7}, Landroid/support/v7/internal/view/SupportMenuInflater;->access$300(Landroid/support/v7/internal/view/SupportMenuInflater;)[Ljava/lang/Object;
move-result-object v7
invoke-direct {p0, v4, v5, v7}, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/view/ActionProvider;
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
:goto_cf
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iput-boolean v6, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemAdded:Z
return-void
:cond_d5
move v4, v6
goto :goto_69
:cond_d7
iget v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I
iput v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemCheckable:I
goto :goto_6b
:cond_dc
move v2, v6
goto :goto_b1
:cond_de
if-eqz v2, :cond_e7
const-string v4, "SupportMenuInflater"
const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_e7
const/4 v4, 0x0
iput-object v4, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
goto :goto_cf
.end method
.method public resetGroup()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupId:I
iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCategory:I
iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupOrder:I
iput v0, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupCheckable:I
iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupVisible:Z
iput-boolean v1, p0, Landroid/support/v7/internal/view/SupportMenuInflater$MenuState;->groupEnabled:Z
return-void
.end method