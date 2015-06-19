.class public interface abstract Lcom/pinguo/album/selectors/ISelector;
.super Ljava/lang/Object;
.source "ISelector.java"
.field public static final ENTER_SELECTION_MODE:I = 0x1
.field public static final LEAVE_SELECTION_MODE:I = 0x2
.field public static final SELECT_ALL_MODE:I = 0x3
.method public abstract deSelectAll()V
.end method
.method public abstract enterSelectionMode()V
.end method
.method public abstract getSelectedCount()I
.end method
.method public abstract inSelectAllMode()Z
.end method
.method public abstract inSelectionMode()Z
.end method
.method public abstract leaveSelectionMode()V
.end method
.method public abstract selectAll()V
.end method
.method public abstract setSelectionListener(Lcom/pinguo/album/selectors/SelectionListener;)V
.end method
.method public abstract setSourceMediaSet(Lcom/pinguo/album/data/MediaSet;)V
.end method