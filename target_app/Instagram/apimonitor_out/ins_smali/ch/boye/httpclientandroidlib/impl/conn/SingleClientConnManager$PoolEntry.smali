.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.source "SingleClientConnManager.java"
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V
.registers 4
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
iget-object v0, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
return-void
.end method
.method protected close()V
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->close()V
:cond_10
return-void
.end method
.method protected shutdown()V
.registers 2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isOpen()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->shutdown()V
:cond_10
return-void
.end method