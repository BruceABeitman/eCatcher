.class public Lcom/twidroid/ui/a/f;
.super Landroid/widget/Filter;
.source "SourceFile"
.field  a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/ui/a/e;
.method public constructor <init>(Lcom/twidroid/ui/a/e;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/f;->b:Lcom/twidroid/ui/a/e;
invoke-direct {p0}, Landroid/widget/Filter;-><init>()V
return-void
.end method
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.registers 12
const/4 v9, 0x1
const/4 v4, 0x0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_6a
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\'"
const-string v2, " "
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/twidroid/ui/a/f;->b:Lcom/twidroid/ui/a/e;
iget-object v0, v0, Lcom/twidroid/ui/a/e;->b:Landroid/database/sqlite/SQLiteDatabase;
const-string v1, "hashtags"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v5, 0x0
const-string v6, "id"
aput-object v6, v2, v5
const-string v5, "hashtag"
aput-object v5, v2, v9
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "hashtag LIKE \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "%\'"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v7, "hashtag asc"
move-object v5, v4
move-object v6, v4
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
:goto_4b
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_59
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4b
:cond_59
invoke-interface {v0}, Landroid/database/Cursor;->close()V
new-instance v0, Landroid/widget/Filter$FilterResults;
invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V
iput-object v8, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v1
iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I
:goto_69
return-object v0
:cond_6a
new-instance v0, Landroid/widget/Filter$FilterResults;
invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V
goto :goto_69
.end method
.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.registers 4
if-eqz p2, :cond_e
iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lcom/twidroid/ui/a/f;->a:Ljava/util/ArrayList;
:goto_8
:try_start_8
iget-object v0, p0, Lcom/twidroid/ui/a/f;->b:Lcom/twidroid/ui/a/e;
invoke-virtual {v0}, Lcom/twidroid/ui/a/e;->notifyDataSetChanged()V
:goto_d
:try_end_d
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_16
return-void
:cond_e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/f;->a:Ljava/util/ArrayList;
goto :goto_8
:catch_16
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_d
.end method