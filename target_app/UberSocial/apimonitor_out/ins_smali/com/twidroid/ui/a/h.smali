.class public Lcom/twidroid/ui/a/h;
.super Landroid/widget/Filter;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/ui/a/g;
.field private b:I
.field private c:Ljava/lang/String;
.method protected constructor <init>(Lcom/twidroid/ui/a/g;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-direct {p0}, Landroid/widget/Filter;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/ui/a/h;->b:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/a/h;->c:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/h;)I
.registers 2
iget v0, p0, Lcom/twidroid/ui/a/h;->b:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/ui/a/h;->b:I
return v0
.end method
.method static synthetic a(Lcom/twidroid/ui/a/h;Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/h;->b(Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/twidroid/ui/a/h;->a(Ljava/lang/String;Lcom/twidroid/ui/a/b;)Landroid/widget/Filter$FilterResults;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/String;Lcom/twidroid/ui/a/b;)Landroid/widget/Filter$FilterResults;
.registers 6
if-eqz p2, :cond_12
new-instance v0, Lcom/twidroid/ui/a/i;
invoke-direct {v0, p0, p2}, Lcom/twidroid/ui/a/i;-><init>(Lcom/twidroid/ui/a/h;Lcom/twidroid/ui/a/b;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const/4 v0, 0x0
:goto_11
return-object v0
:cond_12
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/h;->b(Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
move-result-object v0
goto :goto_11
.end method
.method private a(Ljava/util/ArrayList;)V
.registers 15
const/4 v9, 0x0
const/4 v5, 0x0
iget-object v0, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v0}, Lcom/twidroid/ui/a/g;->b()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0c0316
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
check-cast v3, Ljava/lang/String;
new-instance v0, Lcom/twidroid/model/twitter/User;
const-wide/32 v1, 0x7f0c0316
const-string v11, ""
move-object v4, v3
move-object v6, v5
move-object v7, v5
move-object v8, v5
move v10, v9
move-object v12, v5
invoke-direct/range {v0 .. v12}, Lcom/twidroid/model/twitter/User;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Date;)V
if-nez p1, :cond_2c
new-instance p1, Ljava/util/ArrayList;
invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
:cond_2c
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private b(Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
.registers 21
if-nez p1, :cond_8
new-instance v2, Landroid/widget/Filter$FilterResults;
invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V
:goto_7
return-object v2
:cond_8
new-instance v17, Ljava/util/ArrayList;
invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
new-instance v16, Landroid/widget/Filter$FilterResults;
invoke-direct/range {v16 .. v16}, Landroid/widget/Filter$FilterResults;-><init>()V
const/4 v15, 0x0
const/4 v2, -0x1
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v3}, Lcom/twidroid/ui/a/g;->a()Z
move-result v3
if-eqz v3, :cond_3e
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v3
if-eqz v3, :cond_a7
invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v3
:goto_28
if-eqz v3, :cond_3e
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v4
if-eqz v4, :cond_3e
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v3
if-eqz v3, :cond_3e
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
:cond_3e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "SELECT _id, name, screenname, location, profileimageurl, url, lastupdate, dirty, is_in_circle FROM followers WHERE (screenname LIKE \'%1$s\' OR name LIKE \'%1$s\') %2$s ORDER BY name COLLATE NOCASE ASC LIMIT 20 OFFSET "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget v4, v0, Lcom/twidroid/ui/a/h;->b:I
mul-int/lit8 v4, v4, 0x14
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "%"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v5}, Lcom/twidroid/ui/a/g;->a()Z
move-result v5
if-eqz v5, :cond_a9
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, " AND account="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:goto_8d
sget-object v5, Lcom/twidroid/ui/a/g$1;->a:[I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v6}, Lcom/twidroid/ui/a/g;->i()Lcom/twidroid/ui/a/j;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/ui/a/j;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_1c2
new-instance v2, Landroid/widget/Filter$FilterResults;
invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V
goto/16 :goto_7
:cond_a7
const/4 v3, 0x0
goto :goto_28
:cond_a9
const-string v2, ""
goto :goto_8d
:pswitch_ac
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v4, v5, v6
const/4 v4, 0x1
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "AND isfollower=0"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v5, v4
invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
:goto_cc
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v3}, Lcom/twidroid/ui/a/g;->h()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v18
:goto_d9
invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_1be
const/4 v2, 0x2
move-object/from16 v0, v18
invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_16b
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V
const/4 v2, 0x1
:goto_f2
const-string v3, "AutoCompleteUsersAdapter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Results: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
if-nez v2, :cond_124
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v2}, Lcom/twidroid/ui/a/g;->e()Z
move-result v2
if-eqz v2, :cond_124
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-direct {v0, v1}, Lcom/twidroid/ui/a/h;->a(Ljava/util/ArrayList;)V
:cond_124
move-object/from16 v0, v17
move-object/from16 v1, v16
iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
move-result v2
move-object/from16 v0, v16
iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I
move-object/from16 v2, v16
goto/16 :goto_7
:pswitch_136
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v4, v5, v6
const/4 v4, 0x1
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "AND isfollower=1"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v5, v4
invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
goto/16 :goto_cc
:pswitch_158
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v4, v5, v6
const/4 v4, 0x1
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
aput-object v2, v5, v4
invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
goto/16 :goto_cc
:cond_16b
new-instance v2, Lcom/twidroid/model/twitter/User;
const/4 v3, 0x0
move-object/from16 v0, v18
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
int-to-long v3, v3
const/4 v5, 0x1
move-object/from16 v0, v18
invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x2
move-object/from16 v0, v18
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x3
move-object/from16 v0, v18
invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
const/4 v9, 0x4
move-object/from16 v0, v18
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
const/4 v10, 0x5
move-object/from16 v0, v18
invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x0
const/4 v12, 0x0
const-string v13, ""
const/4 v14, 0x0
invoke-direct/range {v2 .. v14}, Lcom/twidroid/model/twitter/User;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Date;)V
const-string v3, "is_in_circle"
move-object/from16 v0, v18
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v3
move-object/from16 v0, v18
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
if-eqz v3, :cond_1bc
const/4 v3, 0x1
:goto_1b2
invoke-virtual {v2, v3}, Lcom/twidroid/model/twitter/User;->a(Z)V
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_d9
:cond_1bc
const/4 v3, 0x0
goto :goto_1b2
:cond_1be
move v2, v15
goto/16 :goto_f2
nop
:pswitch_data_1c2
.packed-switch 0x1
:pswitch_ac
:pswitch_136
:pswitch_158
.end packed-switch
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/h;->c:Ljava/lang/String;
new-instance v1, Lcom/twidroid/ui/a/h$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a/h$1;-><init>(Lcom/twidroid/ui/a/h;)V
invoke-direct {p0, v0, v1}, Lcom/twidroid/ui/a/h;->a(Ljava/lang/String;Lcom/twidroid/ui/a/b;)Landroid/widget/Filter$FilterResults;
return-void
.end method
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.registers 6
const/4 v3, 0x0
if-eqz p1, :cond_51
iget-object v0, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v0}, Lcom/twidroid/ui/a/g;->g()I
move-result v0
invoke-static {p1, v0}, Lcom/twidroid/d/c;->a(Ljava/lang/CharSequence;I)Lcom/twidroid/d/e;
move-result-object v0
iget-object v0, v0, Lcom/twidroid/d/e;->a:Ljava/lang/CharSequence;
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v1
if-lez v1, :cond_26
invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C
move-result v1
const/16 v2, 0x40
if-ne v1, v2, :cond_26
const/4 v1, 0x1
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v0
:cond_26
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\'"
const-string v2, " "
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v1}, Lcom/twidroid/ui/a/g;->d()Z
move-result v1
if-nez v1, :cond_48
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_48
new-instance v0, Landroid/widget/Filter$FilterResults;
invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V
:goto_47
return-object v0
:cond_48
iput-object v0, p0, Lcom/twidroid/ui/a/h;->c:Ljava/lang/String;
iput v3, p0, Lcom/twidroid/ui/a/h;->b:I
invoke-direct {p0, v0}, Lcom/twidroid/ui/a/h;->a(Ljava/lang/String;)Landroid/widget/Filter$FilterResults;
move-result-object v0
goto :goto_47
:cond_51
new-instance v0, Landroid/widget/Filter$FilterResults;
invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V
goto :goto_47
.end method
.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.registers 5
iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I
if-lez v0, :cond_23
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/ui/a/h;->b:I
iget-object v0, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-static {v0}, Lcom/twidroid/ui/a/g;->a(Lcom/twidroid/ui/a/g;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
check-cast v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-static {v1}, Lcom/twidroid/ui/a/g;->a(Lcom/twidroid/ui/a/g;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v0}, Lcom/twidroid/ui/a/g;->notifyDataSetChanged()V
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/twidroid/ui/a/h;->a:Lcom/twidroid/ui/a/g;
invoke-virtual {v0}, Lcom/twidroid/ui/a/g;->notifyDataSetInvalidated()V
goto :goto_22
.end method