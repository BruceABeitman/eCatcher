.class public Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;
.super Ljava/lang/Object;
.source "FacebookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Affiliation"
.end annotation


# instance fields
.field public final mAffiliationName:Ljava/lang/String;

.field public final mStatus:Ljava/lang/String;

.field public final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/katana/service/api/FacebookInfo;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/api/FacebookInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;->this$0:Lcom/facebook/katana/service/api/FacebookInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;->mAffiliationName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookInfo$Affiliation;->mStatus:Ljava/lang/String;

    return-void
.end method
