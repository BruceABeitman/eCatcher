.class public Lcom/spotify/mobile/android/spotlets/ads/model/AdSlot;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public ad_id:Ljava/lang/Integer;
.field public inventory_types:Ljava/util/List;
.field public slot_id:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdSlot;->slot_id:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdSlot;->inventory_types:Ljava/util/List;
return-void
.end method