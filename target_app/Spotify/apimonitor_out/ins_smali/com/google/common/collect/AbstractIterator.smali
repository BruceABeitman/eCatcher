.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/aq;
.source "SourceFile"
.field private a:Lcom/google/common/collect/AbstractIterator$State;
.field private b:Ljava/lang/Object;
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/common/collect/aq;-><init>()V
sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->b:Lcom/google/common/collect/AbstractIterator$State;
iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
return-void
.end method
.method protected abstract a()Ljava/lang/Object;
.end method
.method protected final b()Ljava/lang/Object;
.registers 2
sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->c:Lcom/google/common/collect/AbstractIterator$State;
iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
const/4 v0, 0x0
return-object v0
.end method
.method public final hasNext()Z
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
sget-object v3, Lcom/google/common/collect/AbstractIterator$State;->d:Lcom/google/common/collect/AbstractIterator$State;
if-eq v0, v3, :cond_2f
move v0, v1
:goto_9
invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V
sget-object v0, Lcom/google/common/collect/AbstractIterator$1;->a:[I
iget-object v3, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
invoke-virtual {v3}, Lcom/google/common/collect/AbstractIterator$State;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_34
sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->d:Lcom/google/common/collect/AbstractIterator$State;
iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->a()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->b:Ljava/lang/Object;
iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
sget-object v3, Lcom/google/common/collect/AbstractIterator$State;->c:Lcom/google/common/collect/AbstractIterator$State;
if-eq v0, v3, :cond_2e
sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->a:Lcom/google/common/collect/AbstractIterator$State;
iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
move v2, v1
:pswitch_2e
:goto_2e
:cond_2e
return v2
:cond_2f
move v0, v2
goto :goto_9
:pswitch_31
move v2, v1
goto :goto_2e
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_2e
:pswitch_31
.end packed-switch
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z
move-result v0
if-nez v0, :cond_c
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_c
sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->b:Lcom/google/common/collect/AbstractIterator$State;
iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;
iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->b:Ljava/lang/Object;
return-object v0
.end method