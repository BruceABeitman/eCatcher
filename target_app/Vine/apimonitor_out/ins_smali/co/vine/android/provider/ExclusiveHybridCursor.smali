.class public abstract Lco/vine/android/provider/ExclusiveHybridCursor;
.super Lco/vine/android/provider/GroupCursor;
.source "ExclusiveHybridCursor.java"
.field private mMode:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.field private mRemoteData:Ljava/util/List;
.method public constructor <init>(Landroid/database/Cursor;)V
.registers 3
const/16 v0, 0x14
invoke-direct {p0, p1, v0}, Lco/vine/android/provider/ExclusiveHybridCursor;-><init>(Landroid/database/Cursor;I)V
return-void
.end method
.method public constructor <init>(Landroid/database/Cursor;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;I)V
sget-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->CURSOR:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
iput-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mMode:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
return-void
.end method
.method public constructor <init>(Ljava/util/ArrayList;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/provider/GroupCursor;-><init>(Landroid/database/Cursor;)V
sget-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->CURSOR:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
iput-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mMode:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
iput-object p1, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mRemoteData:Ljava/util/List;
return-void
.end method
.method public abstract createItemFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
.end method
.method public abstract createItemsFromRemoteData(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public getMode()Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.registers 2
iget-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mMode:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
return-object v0
.end method
.method public isLastItem()Z
.registers 3
iget-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mRemoteData:Ljava/util/List;
if-eqz v0, :cond_10
iget-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mRemoteData:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mCursorPosition:I
add-int/lit8 v1, v1, 0x1
if-ge v0, v1, :cond_1e
:cond_10
iget-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mCursor:Landroid/database/Cursor;
if-eqz v0, :cond_20
iget-object v0, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mCursor:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v0
iget v1, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mCursorPosition:I
if-lt v0, v1, :cond_20
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public onPrepare()V
.registers 9
sget-object v6, Lco/vine/android/provider/ExclusiveHybridCursor$1;->$SwitchMap$co$vine$android$provider$ExclusiveHybridCursor$Mode:[I
iget-object v7, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mMode:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
invoke-virtual {v7}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_6c
:cond_d
:goto_d
return-void
:pswitch_e
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mList:Ljava/util/List;
iget-object v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mRemoteData:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v5
const/4 v3, 0x0
:goto_1c
if-ge v3, v5, :cond_d
iget v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mLimit:I
if-ge v3, v6, :cond_d
iget-object v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mList:Ljava/util/List;
iget-object v7, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mRemoteData:Ljava/util/List;
invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
invoke-virtual {p0, v7}, Lco/vine/android/provider/ExclusiveHybridCursor;->createItemsFromRemoteData(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, 0x1
goto :goto_1c
:pswitch_34
iget-object v1, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mCursor:Landroid/database/Cursor;
const/4 v0, 0x0
if-eqz v1, :cond_68
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v6
if-eqz v6, :cond_68
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mList:Ljava/util/List;
:cond_46
iget-object v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mList:Ljava/util/List;
invoke-virtual {p0, v1}, Lco/vine/android/provider/ExclusiveHybridCursor;->createItemFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;
move-result-object v7
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_start_4f
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
:try_end_52
.catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_52} :catch_5a
move-result v4
:goto_53
if-eqz v4, :cond_d
iget v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mLimit:I
if-lt v0, v6, :cond_46
goto :goto_d
:catch_5a
move-exception v2
const-string v6, "Failed to get cursor\'s row id."
invoke-static {v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->gc()V
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
goto :goto_53
:cond_68
const/4 v6, 0x0
iput-object v6, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mList:Ljava/util/List;
goto :goto_d
:pswitch_data_6c
.packed-switch 0x1
:pswitch_e
:pswitch_34
.end packed-switch
.end method
.method public setMode(Lco/vine/android/provider/ExclusiveHybridCursor$Mode;)V
.registers 2
iput-object p1, p0, Lco/vine/android/provider/ExclusiveHybridCursor;->mMode:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
return-void
.end method