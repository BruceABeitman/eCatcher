.class final Landroid/support/v4/app/bd;
.super Landroid/support/v4/app/bj;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/bj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ba;)Landroid/app/Notification;
    .registers 25

    new-instance v1, Landroid/support/v4/app/bm;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ba;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/ba;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ba;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/ba;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ba;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ba;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/ba;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ba;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/ba;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ba;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ba;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ba;->u:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->v:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ba;->r:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ba;->s:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v1 .. v22}, Landroid/support/v4/app/bm;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ba;->t:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/av;->a(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;

    invoke-static {v1, v2}, Landroid/support/v4/app/av;->a(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V

    invoke-virtual {v1}, Landroid/support/v4/app/bm;->b()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
