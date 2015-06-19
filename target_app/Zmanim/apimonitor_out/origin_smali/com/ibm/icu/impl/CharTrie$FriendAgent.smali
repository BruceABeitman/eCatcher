.class public Lcom/ibm/icu/impl/CharTrie$FriendAgent;
.super Ljava/lang/Object;
.source "CharTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CharTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/CharTrie;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/CharTrie;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->this$0:Lcom/ibm/icu/impl/CharTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrivateData()[C
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->this$0:Lcom/ibm/icu/impl/CharTrie;

    #getter for: Lcom/ibm/icu/impl/CharTrie;->m_data_:[C
    invoke-static {v0}, Lcom/ibm/icu/impl/CharTrie;->access$000(Lcom/ibm/icu/impl/CharTrie;)[C

    move-result-object v0

    return-object v0
.end method

.method public getPrivateIndex()[C
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->this$0:Lcom/ibm/icu/impl/CharTrie;

    iget-object v0, v0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    return-object v0
.end method

.method public getPrivateInitialValue()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie$FriendAgent;->this$0:Lcom/ibm/icu/impl/CharTrie;

    #getter for: Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C
    invoke-static {v0}, Lcom/ibm/icu/impl/CharTrie;->access$100(Lcom/ibm/icu/impl/CharTrie;)C

    move-result v0

    return v0
.end method
