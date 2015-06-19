.class public Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "ProductsHaveNewFlagInShop.java"
.field private isNew:Z
.method public constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V
iput-boolean p1, p0, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;->isNew:Z
return-void
.end method
.method public isNew()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;->isNew:Z
return v0
.end method