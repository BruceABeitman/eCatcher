.class public Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"
.implements Lch/boye/httpclientandroidlib/HeaderIterator;
.field protected final allHeaders:Ljava/util/List;
.field protected currentIndex:I
.field protected headerName:Ljava/lang/String;
.field protected lastIndex:I
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
.registers 5
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Header list must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;
iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;
invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->findNext(I)I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I
iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I
return-void
.end method
.method protected filterHeader(I)Z
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/Header;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
goto :goto_5
.end method
.method protected findNext(I)I
.registers 5
const/4 v0, -0x1
if-ge p1, v0, :cond_4
:cond_3
:goto_3
return v0
:cond_4
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v2, v1, -0x1
const/4 v1, 0x0
:goto_d
if-nez v1, :cond_18
if-ge p1, v2, :cond_18
add-int/lit8 p1, p1, 0x1
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->filterHeader(I)Z
move-result v1
goto :goto_d
:cond_18
if-eqz v1, :cond_3
move v0, p1
goto :goto_3
.end method
.method public hasNext()Z
.registers 2
iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I
if-ltz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;
move-result-object v0
return-object v0
.end method
.method public nextHeader()Lch/boye/httpclientandroidlib/Header;
.registers 3
iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I
if-gez v0, :cond_c
new-instance v0, Ljava/util/NoSuchElementException;
const-string v1, "Iteration already finished."
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->findNext(I)I
move-result v1
iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I
iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/Header;
return-object v0
.end method
.method public remove()V
.registers 3
iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I
if-gez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No header to remove."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;
iget v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
const/4 v0, -0x1
iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I
iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I
return-void
.end method