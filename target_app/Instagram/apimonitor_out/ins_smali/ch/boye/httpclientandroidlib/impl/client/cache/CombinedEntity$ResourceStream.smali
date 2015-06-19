.class  Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;
.super Ljava/io/FilterInputStream;
.source "CombinedEntity.java"
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V
.registers 3
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public close()V
.registers 3
:try_start_0
invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
:try_end_3
.catchall {:try_start_0 .. :try_end_3} :catchall_9
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
#calls: Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->dispose()V
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->access$000(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;)V
return-void
:catchall_9
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
#calls: Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->dispose()V
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->access$000(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;)V
throw v0
.end method