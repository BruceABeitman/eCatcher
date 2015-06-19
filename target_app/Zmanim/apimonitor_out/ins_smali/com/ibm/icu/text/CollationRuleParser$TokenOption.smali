.class  Lcom/ibm/icu/text/CollationRuleParser$TokenOption;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"
.field private m_attribute_:I
.field private m_name_:Ljava/lang/String;
.field private m_subOptionAttributeValues_:[I
.field private m_subOptions_:[Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_name_:Ljava/lang/String;
iput p2, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_attribute_:I
iput-object p3, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
iput-object p4, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptionAttributeValues_:[I
return-void
.end method
.method static synthetic access$000(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_name_:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$100(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptions_:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$200(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_attribute_:I
return v0
.end method
.method static synthetic access$300(Lcom/ibm/icu/text/CollationRuleParser$TokenOption;)[I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CollationRuleParser$TokenOption;->m_subOptionAttributeValues_:[I
return-object v0
.end method