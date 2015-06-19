.class public final Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"
.field public data_signature:Ljava/lang/String;
.field public purchase_data:Ljava/lang/String;
.field public response_code:Ljava/lang/Integer;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V
if-nez p1, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->response_code:Ljava/lang/Integer;
iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->response_code:Ljava/lang/Integer;
iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->purchase_data:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->purchase_data:Ljava/lang/String;
iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->data_signature:Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->data_signature:Ljava/lang/String;
goto :goto_5
.end method
.method public final build()Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;
.registers 3
invoke-virtual {p0}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->checkRequiredFields()V
new-instance v0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;-><init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;B)V
return-object v0
.end method
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
.registers 2
invoke-virtual {p0}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->build()Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;
move-result-object v0
return-object v0
.end method
.method public final data_signature(Ljava/lang/String;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->data_signature:Ljava/lang/String;
return-object p0
.end method
.method public final purchase_data(Ljava/lang/String;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->purchase_data:Ljava/lang/String;
return-object p0
.end method
.method public final response_code(Ljava/lang/Integer;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;
.registers 2
iput-object p1, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->response_code:Ljava/lang/Integer;
return-object p0
.end method