.class public Lcom/fsck/k9/activity/ManageIdentities;
.super Lcom/fsck/k9/activity/ChooseIdentity;
.source "ManageIdentities.java"


# static fields
.field private static final ACTIVITY_EDIT_IDENTITY:I = 0x1

.field public static final EXTRA_IDENTITIES:Ljava/lang/String; = "com.fsck.k9.EditIdentity_identities"


# instance fields
.field private mIdentitiesChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fsck/k9/activity/ChooseIdentity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/ManageIdentities;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V

    return-void
.end method

.method private editItem(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/EditIdentity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.EditIdentity_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.EditIdentity_identity"

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Account$Identity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.fsck.k9.EditIdentity_identity_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/ManageIdentities;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private saveIdentities()V
    .registers 3

    iget-boolean v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setIdentities(Ljava/util/List;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->finish()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_90

    :cond_e
    :goto_e
    return v4

    :pswitch_f
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V

    goto :goto_e

    :pswitch_15
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v2, :cond_e

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sub-int/2addr v3, v4

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_e

    :pswitch_31
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v3, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_e

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_e

    :pswitch_55
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account$Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_e

    :pswitch_6b
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_80

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_e

    :cond_80
    const v2, 0x7f08019a

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/ManageIdentities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_e

    nop

    :pswitch_data_90
    .packed-switch 0x7f0b008a
        :pswitch_f
        :pswitch_15
        :pswitch_31
        :pswitch_55
        :pswitch_6b
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ChooseIdentity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const v0, 0x7f080181

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ChooseIdentity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/fsck/k9/activity/ManageIdentities;->saveIdentities()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ChooseIdentity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ChooseIdentity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/EditIdentity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.fsck.k9.EditIdentity_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/fsck/k9/activity/ManageIdentities;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v3

    goto :goto_c

    :pswitch_data_20
    .packed-switch 0x7f0b008f
        :pswitch_d
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->onResume()V

    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->refresh(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    return-void
.end method

.method protected setupClickListeners()V
    .registers 4

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/activity/ManageIdentities$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/ManageIdentities$1;-><init>(Lcom/fsck/k9/activity/ManageIdentities;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ManageIdentities;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method
