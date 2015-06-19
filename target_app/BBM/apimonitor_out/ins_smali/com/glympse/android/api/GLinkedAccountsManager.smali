.class public interface abstract Lcom/glympse/android/api/GLinkedAccountsManager;
.super Ljava/lang/Object;
.source "GLinkedAccountsManager.java"
.implements Lcom/glympse/android/api/GEventSink;
.method public abstract canSend(Lcom/glympse/android/api/GInvite;)Z
.end method
.method public abstract getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;
.end method
.method public abstract getAccountProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract getAccounts()Lcom/glympse/android/core/GArray;
.end method
.method public abstract getCount(Z)I
.end method
.method public abstract isSynced()Z
.end method
.method public abstract link(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GLinkedAccount;
.end method
.method public abstract refresh(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GLinkedAccount;
.end method
.method public abstract refresh()Z
.end method
.method public abstract setAccountProperty(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.end method
.method public abstract unlink(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;
.end method