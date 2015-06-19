.class public Lcom/facebook/katana/LiveFolderActivity;
.super Landroid/app/Activity;
.source "LiveFolderActivity.java"


# static fields
.field private static final PHONE_DIALOG:I = 0x1


# instance fields
.field private m_cell:Ljava/lang/String;

.field private m_firstTime:Z

.field private m_other:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_firstTime:Z

    return-void
.end method

.method private static createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.ICON"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    const/high16 v11, 0x1000

    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string v13, "cell"

    const-string v12, "android.intent.action.DIAL"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/katana/LiveFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, -0x1

    sget-object v2, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDERS_CONTENT_URI:Landroid/net/Uri;

    const v3, 0x7f080070

    invoke-virtual {p0, v3}, Lcom/facebook/katana/LiveFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200a7

    invoke-static {p0, v2, v3, v4}, Lcom/facebook/katana/LiveFolderActivity;->createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/LiveFolderActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/katana/LiveFolderActivity;->finish()V

    :cond_32
    :goto_32
    return-void

    :cond_33
    const-string v0, "com.facebook.katana.livefolder"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/katana/LiveFolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cell"

    aput-object v13, v2, v4

    const-string v4, "other"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_32

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string v0, "cell"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ac

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    :goto_7d
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_af

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    :cond_9d
    :goto_9d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    if-eqz v0, :cond_b2

    invoke-virtual {p0, v10}, Lcom/facebook/katana/LiveFolderActivity;->setRequestedOrientation(I)V

    goto :goto_32

    :cond_ac
    iput-object v3, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    goto :goto_7d

    :cond_af
    iput-object v3, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    goto :goto_9d

    :cond_b2
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    const-string v0, "tel"

    iget-object v2, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v8, v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/facebook/katana/LiveFolderActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/katana/LiveFolderActivity;->finish()V

    goto/16 :goto_32

    :cond_cc
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    const-string v0, "tel"

    iget-object v2, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v8, v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/facebook/katana/LiveFolderActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/katana/LiveFolderActivity;->finish()V

    goto/16 :goto_32
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12

    const v9, 0x7f020071

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_56

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :pswitch_b
    new-array v6, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    aput-object v0, v6, v7

    new-array v2, v8, [Ljava/lang/String;

    const v0, 0x7f08006f

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/katana/LiveFolderActivity;->m_cell:Ljava/lang/String;

    aput-object v4, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/LiveFolderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const v0, 0x7f080071

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/katana/LiveFolderActivity;->m_other:Ljava/lang/String;

    aput-object v4, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/LiveFolderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    new-array v3, v8, [I

    aput v9, v3, v5

    aput v9, v3, v7

    invoke-virtual {p0}, Lcom/facebook/katana/LiveFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/facebook/katana/LiveFolderActivity$1;

    invoke-direct {v4, p0, v6}, Lcom/facebook/katana/LiveFolderActivity$1;-><init>(Lcom/facebook/katana/LiveFolderActivity;[Ljava/lang/String;)V

    new-instance v5, Lcom/facebook/katana/LiveFolderActivity$2;

    invoke-direct {v5, p0}, Lcom/facebook/katana/LiveFolderActivity$2;-><init>(Lcom/facebook/katana/LiveFolderActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/AlertDialogs;->showSubMenu(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_firstTime:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/LiveFolderActivity;->m_firstTime:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/LiveFolderActivity;->showDialog(I)V

    :cond_e
    return-void
.end method
