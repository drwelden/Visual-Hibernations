<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="b2937d95-7c89-458d-87f0-563ff5fc4e1f" Description="Description for VisualHibernations.VisualHibernations" Name="VisualHibernations" DisplayName="Class Diagrams" Namespace="VisualHibernations" ProductName="VisualHibernations" CompanyName="Dustin Welden" PackageGuid="548d9f52-1bfd-42c3-8b56-9bcf35214ce4" PackageNamespace="VisualHibernations" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="59dc3371-7f7d-4749-bb9e-acaec06eae2a" Description="" Name="NamedElement" DisplayName="Named Element" InheritanceModifier="Abstract" Namespace="VisualHibernations">
      <Properties>
        <DomainProperty Id="ac977a89-f1f7-43e5-b5a1-81a9c99e71a1" Description="" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="85ac1b26-ddf3-47ae-b452-aeb84d8b73c4" Description="" Name="ModelRoot" DisplayName="Model Root" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Comment" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ModelRootHasComments.Comments</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ModelType" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ModelRootHasTypes.Types</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="b283204a-30be-4d73-a27a-342125a05ebd" Description="" Name="ModelClass" DisplayName="Model Class" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="ModelType" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="757415d7-89fb-442a-8eff-3f55f4ee7c4f" Description="" Name="Kind" DisplayName="Kind" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="45abc66f-222d-4684-9a1c-928a5ab0f405" Description="" Name="IsAbstract" DisplayName="Is Abstract" DefaultValue="None">
          <Type>
            <DomainEnumerationMoniker Name="InheritanceModifier" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ModelAttribute" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClassHasAttributes.Attributes</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ClassOperation" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ClassHasOperations.Operations</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="28a6a72c-32da-4c42-b0a3-b429b972722b" Description="An attribute of a class." Name="ModelAttribute" DisplayName="Model Attribute" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="ClassModelElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="8eb3a161-8ec3-4330-bb5a-9af32b2c3d64" Description="" Name="Type" DisplayName="Type" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8402b035-49f3-4b0a-8547-e6fc742a200d" Description="" Name="InitialValue" DisplayName="Initial Value" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="620dbb72-a82a-45c2-8b38-a2ea30ddac15" Description="" Name="Multiplicity" DisplayName="Multiplicity" DefaultValue="1">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="caf44518-8c89-4c4f-9789-ed64f28b5918" Description="" Name="Comment" DisplayName="Comment" Namespace="VisualHibernations">
      <Properties>
        <DomainProperty Id="e874c99a-6279-4c0e-b881-f4840626879f" Description="" Name="Text" DisplayName="Text" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="53933057-25fa-446d-9f15-20fe0607a68b" Description="An Operation of a Class." Name="Operation" DisplayName="Operation" InheritanceModifier="Abstract" Namespace="VisualHibernations">
      <Notes>Abstract base class of ClassOperation and InterfaceOperation.</Notes>
      <BaseClass>
        <DomainClassMoniker Name="ClassModelElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="7d1354d1-48d7-407a-aac1-1651a2ddafd6" Description="" Name="Signature" DisplayName="Signature" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d0b6a6a2-f5a3-492f-9d62-d1bb4c5d972f" Description="" Name="Concurrency" DisplayName="Concurrency" DefaultValue="Sequential">
          <Type>
            <DomainEnumerationMoniker Name="OperationConcurrency" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="030c6174-98c3-4b3d-ab74-b1529c4a253a" Description="" Name="Precondition" DisplayName="Precondition" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b5174711-c34d-482e-b970-ac8ed3c81739" Description="" Name="Postcondition" DisplayName="Postcondition" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="02124153-29d2-4bf2-ab74-5f6db277f428" Description="" Name="ClassOperation" DisplayName="Class Operation" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="Operation" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="2dd6ab78-f5fa-4e55-9fa8-3296fbf1bfe2" Description="" Name="IsAbstract" DisplayName="Is Abstract" DefaultValue="False">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="f0774456-93e2-4180-b863-9bbd5d703239" Description="" Name="ModelInterface" DisplayName="Model Interface" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="ModelType" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="InterfaceOperation" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>InterfaceHasOperation.Operations</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="9eb22b52-908e-422a-a409-ac1829b60b04" Description="" Name="InterfaceOperation" DisplayName="Interface Operation" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="Operation" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="02758b18-9d1f-4949-bcdc-e9fdac13ce05" Description="" Name="MultipleAssociation" DisplayName="Multiple Association" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="ModelType" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="2c6be7eb-fd5b-4f01-9bfb-080ed63b473d" Description="" Name="ModelType" DisplayName="Model Type" InheritanceModifier="Abstract" Namespace="VisualHibernations">
      <BaseClass>
        <DomainClassMoniker Name="ClassModelElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Comment" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>CommentReferencesSubjects.Comments</DomainPath>
            <DomainPath>ModelRootHasTypes.ModelRoot/!ModelRoot/ModelRootHasComments.Comments</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="8c141621-196e-48cc-b7e5-c545a4f62ac6" Description="Element with a Description" Name="ClassModelElement" DisplayName="Class Model Element" InheritanceModifier="Abstract" Namespace="VisualHibernations">
      <Notes>Abstract base of all elements that have a Description property.</Notes>
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="038dcc9d-a369-476a-ad40-13044193b1f7" Description="This is a Description." Name="Description" DisplayName="Description" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="bad05fb3-d1d2-47f6-9ef2-78330bcacdc1" Description="Associations between Classes." Name="Association" DisplayName="Association" InheritanceModifier="Abstract" Namespace="VisualHibernations" AllowsDuplicates="true">
      <Notes>This is the abstract base relationship of the several kinds of association between Classes.
      It defines the Properties that are attached to each association.</Notes>
      <Properties>
        <DomainProperty Id="f4949969-a9c4-4008-89a7-0950ea047201" Description="" Name="SourceMultiplicity" DisplayName="Source Multiplicity" DefaultValue="ZeroMany">
          <Type>
            <DomainEnumerationMoniker Name="Multiplicity" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="5e0daabe-4e46-44e7-bfb6-306d112dd080" Description="" Name="SourceRoleName" DisplayName="Source Role Name" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="22a28c31-bcbe-4e9b-870e-193c4030a6a6" Description="" Name="TargetMultiplicity" DisplayName="Target Multiplicity" DefaultValue="ZeroMany">
          <Type>
            <DomainEnumerationMoniker Name="Multiplicity" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b0ba4b30-edcf-4b0a-9976-178cb3ef66a3" Description="" Name="TargetRoleName" DisplayName="Target Role Name" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="a745ce94-4113-4845-85fa-3b5496caa513" Description="" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <Notes>The Targets property on a ModelClass will include all the elements targeted by every kind of Association.</Notes>
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="372e3388-19c0-4baa-b65b-58108bbb7153" Description="" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <Notes>The Sources property on a ModelClass will include all the elements sourced by every kind of Association.</Notes>
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a2beb3e8-5633-470b-9027-85ab4b8f485c" Description="" Name="UnidirectionalAssociation" DisplayName="Unidirectional Association" Namespace="VisualHibernations" AllowsDuplicates="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="Association" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="e4e14cb2-1a94-4996-badb-9450c01f03c6" Description="" Name="UnidirectionalSource" DisplayName="Unidirectional Source" PropertyName="UnidirectionalTargets" PropertyDisplayName="Unidirectional Targets">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="91e01b39-211c-456f-b7c8-a11c5e099c3f" Description="" Name="UnidirectionalTarget" DisplayName="Unidirectional Target" PropertyName="UnidirectionalSources" PropertyDisplayName="Unidirectional Sources">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="1785aa3b-59d9-4da1-873a-334590f099a7" Description="" Name="ClassHasAttributes" DisplayName="Class Has Attributes" Namespace="VisualHibernations" IsEmbedding="true">
      <Source>
        <DomainRole Id="029b5fbe-a5b5-49c0-bc5c-7bbbe3a80431" Description="" Name="ModelClass" DisplayName="Model Class" PropertyName="Attributes" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Attributes">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d722f1dc-c152-4f49-8eb2-4fe934fa9af0" Description="" Name="Attribute" DisplayName="Attribute" PropertyName="ModelClass" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Model Class">
          <RolePlayer>
            <DomainClassMoniker Name="ModelAttribute" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f17be78d-2e07-41de-a8f4-ce8694bfb976" Description="" Name="ModelRootHasComments" DisplayName="Model Root Has Comments" Namespace="VisualHibernations" IsEmbedding="true">
      <Source>
        <DomainRole Id="f6c7591b-9c1e-4168-af9d-f11f73f39e40" Description="" Name="ModelRoot" DisplayName="Model Root" PropertyName="Comments" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="ModelRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5f2c9c32-ec43-40a7-ad35-ba7240be9499" Description="" Name="Comment" DisplayName="Comment" PropertyName="ModelRoot" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Model Root">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="7f005675-0981-44fa-ae94-51b839886f0e" Description="" Name="ClassHasOperations" DisplayName="Class Has Operations" Namespace="VisualHibernations" IsEmbedding="true">
      <Source>
        <DomainRole Id="07450e89-8c2e-46dc-8905-8c001208bff0" Description="" Name="ModelClass" DisplayName="ModelClass" PropertyName="Operations" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Operations">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1e2b2d76-78d5-4a52-ad40-1071c917ac9c" Description="" Name="Operation" DisplayName="Operation" PropertyName="ModelClass" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Model Class">
          <RolePlayer>
            <DomainClassMoniker Name="ClassOperation" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d5316f81-cc87-4e7e-bbe7-d2dd48f31888" Description="Inheritance between Classes." Name="Generalization" DisplayName="Generalization" Namespace="VisualHibernations">
      <Properties>
        <DomainProperty Id="8de93c39-86de-48bd-86c1-449abd252761" Description="" Name="Discriminator" DisplayName="Discriminator" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="35507d26-71f6-451b-b5d2-117d1fe138ae" Description="" Name="Superclass" DisplayName="Superclass" PropertyName="Subclasses" PropertyDisplayName="Subclasses">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cb958fe0-74ea-4fcc-a7a8-6215eacf3365" Description="" Name="Subclass" DisplayName="Subclass" PropertyName="Superclass" Multiplicity="ZeroOne" PropertyDisplayName="Superclass">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="03cae5c4-417c-437c-80ae-a5df3a52312f" Description="" Name="BidirectionalAssociation" DisplayName="Bidirectional Association" Namespace="VisualHibernations" AllowsDuplicates="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="Association" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="78b5296c-3d35-42aa-bc46-ffd6e7221875" Description="" Name="BidirectionalSource" DisplayName="Bidirectional Source" PropertyName="BidirectionalTargets" PropertyDisplayName="Bidirectional Targets">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="af17304b-d5c7-456c-8f17-7f7594c432d5" Description="" Name="BidirectionalTarget" DisplayName="Bidirectional Target" PropertyName="BidirectionalSources" PropertyDisplayName="Bidirectional Sources">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="82aea9ce-6ad8-4be9-91a3-92101e21fd0e" Description="" Name="InterfaceHasOperation" DisplayName="Interface Has Operation" Namespace="VisualHibernations" IsEmbedding="true">
      <Source>
        <DomainRole Id="948c9508-d2a3-412d-a75e-c0d0c86f8c9b" Description="" Name="Interface" DisplayName="Interface" PropertyName="Operations" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Operations">
          <RolePlayer>
            <DomainClassMoniker Name="ModelInterface" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ed98294c-00c6-4a79-ad02-4e9c3e35a665" Description="" Name="Operation" DisplayName="Operation" PropertyName="Interface" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Interface">
          <RolePlayer>
            <DomainClassMoniker Name="InterfaceOperation" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f27ad3c8-4657-4efa-8480-4f7ff4c0f54c" Description="Links a MultipleAssociation to one of the classes it associates." Name="MultipleAssociationRole" DisplayName="Multiple Association Role" Namespace="VisualHibernations">
      <Properties>
        <DomainProperty Id="093404da-f08f-4631-afbd-c3492430f48a" Description="" Name="Multiplicity" DisplayName="Multiplicity" DefaultValue="ZeroMany">
          <Type>
            <DomainEnumerationMoniker Name="Multiplicity" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="03b14aa6-62a4-4da7-9b4b-cc4baf6141bb" Description="" Name="RoleName" DisplayName="RoleName" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="274e73c8-8393-41b3-b53a-1517956a2f90" Description="" Name="MultipleAssociation" DisplayName="Multiple Association" PropertyName="Types" PropertyDisplayName="Types">
          <RolePlayer>
            <DomainClassMoniker Name="MultipleAssociation" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9823f85e-d827-411b-ae40-398d18e171a1" Description="" Name="Type" DisplayName="Type" PropertyName="MultipleAssociations" PropertyDisplayName="Multiple Associations">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="10578e7f-6d31-488d-a642-ca2343abbb75" Description="Identifies a MultipleAssociation with a Class, so that it can have attributes." Name="AssociationClassRelationship" DisplayName="Association Class Relationship" Namespace="VisualHibernations">
      <Source>
        <DomainRole Id="a25f5286-189e-405d-b6f8-db3ee7ac0807" Description="" Name="MultipleAssociation" DisplayName="Multiple Association" PropertyName="AssociationClass" Multiplicity="ZeroOne" PropertyDisplayName="Association Class">
          <RolePlayer>
            <DomainClassMoniker Name="MultipleAssociation" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="310cf656-e5eb-470d-ad63-b0e0c5adf0f5" Description="" Name="AssociationClass" DisplayName="Association Class" PropertyName="MultipleAssociation" Multiplicity="ZeroOne" PropertyDisplayName="Multiple Association">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f6e4cd00-81b2-4825-b845-c55ee671a639" Description="" Name="Aggregation" DisplayName="Aggregation" Namespace="VisualHibernations" AllowsDuplicates="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="Association" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="ea691658-4f8e-4ecd-a471-72d953f18644" Description="" Name="AggregationSource" DisplayName="Aggregation Source" PropertyName="AggregationTargets" PropertyDisplayName="Aggregation Targets">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="93b3ae26-df4a-455d-ac08-8d8df3e16142" Description="" Name="AggregationTarget" DisplayName="Aggregation Target" PropertyName="AggregationSources" PropertyDisplayName="Aggregation Sources">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="b2f6d487-0cd8-44b6-ab7d-6514c57df9ac" Description="" Name="Composition" DisplayName="Composition" Namespace="VisualHibernations" AllowsDuplicates="true">
      <BaseRelationship>
        <DomainRelationshipMoniker Name="Association" />
      </BaseRelationship>
      <Source>
        <DomainRole Id="6570f66a-5bc4-4746-9948-82924f003d55" Description="" Name="CompositionSource" DisplayName="Composition Source" PropertyName="CompositionTargets" PropertyDisplayName="Composition Targets">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="7475c13e-4b7f-4f94-8f1c-5493a781c122" Description="" Name="CompositionTarget" DisplayName="Composition Target" PropertyName="CompositionSources" PropertyDisplayName="Composition Sources">
          <RolePlayer>
            <DomainClassMoniker Name="ModelClass" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f8af27f3-95cc-466a-88d1-eb67cac732ca" Description="" Name="ModelRootHasTypes" DisplayName="Model Root Has Types" Namespace="VisualHibernations" IsEmbedding="true">
      <Source>
        <DomainRole Id="1ab4c6d8-f425-4342-a751-f0666680f675" Description="" Name="ModelRoot" DisplayName="Model Root" PropertyName="Types" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Types">
          <RolePlayer>
            <DomainClassMoniker Name="ModelRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e2c4f02a-666b-41f9-be70-48567cb3185e" Description="" Name="Type" DisplayName="Type" PropertyName="ModelRoot" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="">
          <RolePlayer>
            <DomainClassMoniker Name="ModelType" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="90bbec83-47af-43cf-8c5b-e5bccb4b0ae0" Description="" Name="CommentReferencesSubjects" DisplayName="Comment References Subjects" Namespace="VisualHibernations">
      <Source>
        <DomainRole Id="d38e6883-0458-4b4d-a266-c285c3aff661" Description="" Name="Comment" DisplayName="Comment" PropertyName="Subjects" PropertyDisplayName="Subjects">
          <RolePlayer>
            <DomainClassMoniker Name="Comment" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="079711cf-f333-4c95-8e4d-2b2860ab2a8e" Description="" Name="Subject" DisplayName="Subject" PropertyName="Comments" PropertyDisplayName="Comments">
          <RolePlayer>
            <DomainClassMoniker Name="ModelType" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d3e52ad4-34cd-41b3-9185-d686f3a7f314" Description="" Name="Implementation" DisplayName="Implementation" Namespace="VisualHibernations">
      <Source>
        <DomainRole Id="2202b4e7-0e0e-4087-9b08-22fb2c6e46a2" Description="" Name="Implement" DisplayName="Implement" PropertyName="Implementors" PropertyDisplayName="Implementors">
          <RolePlayer>
            <DomainClassMoniker Name="ModelInterface" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="c5f2048f-be79-464f-8097-e7ccba1de2a9" Description="" Name="Implementor" DisplayName="Implementor" PropertyName="Implements" PropertyDisplayName="Implements">
          <RolePlayer>
            <DomainClassMoniker Name="ModelType" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="AccessModifier" Namespace="VisualHibernations" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Public" Value="0" />
        <EnumerationLiteral Description="" Name="Assembly" Value="1" />
        <EnumerationLiteral Description="" Name="Private" Value="2" />
        <EnumerationLiteral Description="" Name="Family" Value="3" />
        <EnumerationLiteral Description="" Name="FamilyOrAssembly" Value="4" />
        <EnumerationLiteral Description="" Name="FamilyAndAssembly" Value="5" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="TypeAccessModifier" Namespace="VisualHibernations" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Public" Value="0" />
        <EnumerationLiteral Description="" Name="Private" Value="1" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="InheritanceModifier" Namespace="VisualHibernations" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="None" Value="0" />
        <EnumerationLiteral Description="" Name="Abstract" Value="1" />
        <EnumerationLiteral Description="" Name="Sealed" Value="2" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="Multiplicity" Namespace="VisualHibernations" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="ZeroMany" Value="0" />
        <EnumerationLiteral Description="" Name="One" Value="1" />
        <EnumerationLiteral Description="" Name="ZeroOne" Value="2" />
        <EnumerationLiteral Description="" Name="OneMany" Value="3" />
      </Literals>
    </DomainEnumeration>
    <DomainEnumeration Name="OperationConcurrency" Namespace="VisualHibernations" Description="">
      <Literals>
        <EnumerationLiteral Description="" Name="Sequential" Value="0" />
        <EnumerationLiteral Description="" Name="Guarded" Value="1" />
        <EnumerationLiteral Description="" Name="Concurrent" Value="2" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <CompartmentShape Id="b1480629-c1c6-4720-a8cd-c80c4a22f235" Description="" Name="ClassShape" DisplayName="Class Shape" Namespace="VisualHibernations" FixedTooltipText="Class Shape" FillColor="211, 220, 239" InitialHeight="0.3" OutlineThickness="0.01" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapse" DisplayName="Expand Collapse" />
      </ShapeHasDecorators>
      <Compartment TitleFillColor="235, 235, 235" Name="AttributesCompartment" Title="Attributes" />
      <Compartment TitleFillColor="235, 235, 235" Name="OperationsCompartment" Title="Operations" />
    </CompartmentShape>
    <CompartmentShape Id="308b617a-cabb-4ab1-a3f8-62a03827310c" Description="" Name="InterfaceShape" DisplayName="Interface Shape" Namespace="VisualHibernations" FixedTooltipText="Interface Shape" FillColor="LightGray" InitialHeight="0.5" OutlineThickness="0.01" Geometry="RoundedRectangle">
      <Notes>This shape only has one compartment, so by default it would not show the compartment header.
      But we want it to look uniform with the ClassShape, so we set IsSingleCompartmentHeaderVisible.</Notes>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Sterotype" DisplayName="Sterotype" DefaultText="&lt;&lt;Interface&gt;&gt;">
          <Notes>This decorator is fixed - not mapped to any property.</Notes>
        </TextDecorator>
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0.15">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="InterfaceShapeNameDecorator">
          <Notes>The VerticalOffset puts this decorator just below the stereotype, with normal font sizes.</Notes>
        </TextDecorator>
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapse" DisplayName="Expand Collapse" />
      </ShapeHasDecorators>
      <Compartment TitleFillColor="235, 235, 235" Name="OperationsCompartment" Title="Operations" />
    </CompartmentShape>
    <GeometryShape Id="fbcffff4-b59d-4e6e-8531-723045ea2313" Description="" Name="CommentBoxShape" DisplayName="Comment Box Shape" Namespace="VisualHibernations" FixedTooltipText="Comment Box Shape" FillColor="255, 255, 204" OutlineColor="204, 204, 102" InitialHeight="0.3" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Comment" DisplayName="Comment" DefaultText="BusinessRulesShapeNameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <ImageShape Id="4527e732-cb24-4041-93c8-91508e5172b0" Description="" Name="MultipleAssociationShape" DisplayName="Multiple Association Shape" Namespace="VisualHibernations" FixedTooltipText="Multiple Association Shape" InitialHeight="1" OutlineThickness="0.01" Image="Resources\Relation.emf" />
  </Shapes>
  <Connectors>
    <Connector Id="e19d1551-438a-4f00-9ed6-cd07424b01e2" Description="" Name="AssociationConnector" DisplayName="Association Connector" InheritanceModifier="Abstract" Namespace="VisualHibernations" FixedTooltipText="Association Connector" Color="113, 111, 110" Thickness="0.01">
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="TargetMultiplicity" DisplayName="Target Multiplicity" DefaultText="TargetMultiplicity" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceBottom" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="SourceMultiplicity" DisplayName="Source Multiplicity" DefaultText="SourceMultiplicity" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="TargetRoleName" DisplayName="Target Role Name" DefaultText="TargetRoleName" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="SourceRoleName" DisplayName="Source Role Name" DefaultText="SourceRoleName" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="db6fe1d7-49f3-4f53-ba54-8b874bb546bb" Description="" Name="UnidirectionalConnector" DisplayName="Unidirectional Connector" Namespace="VisualHibernations" FixedTooltipText="Unidirectional Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01">
      <BaseConnector>
        <ConnectorMoniker Name="AssociationConnector" />
      </BaseConnector>
    </Connector>
    <Connector Id="28f21994-477e-425f-ab28-2b6d841a2e1a" Description="" Name="BidirectionalConnector" DisplayName="Bidirectional Connector" Namespace="VisualHibernations" FixedTooltipText="" Color="113, 111, 110" Thickness="0.01">
      <BaseConnector>
        <ConnectorMoniker Name="AssociationConnector" />
      </BaseConnector>
    </Connector>
    <Connector Id="c677919e-66c3-4b85-b934-b062db4c9971" Description="" Name="AggregationConnector" DisplayName="Aggregation Connector" Namespace="VisualHibernations" FixedTooltipText="Aggregation Connector" Color="113, 111, 110" SourceEndStyle="EmptyDiamond" Thickness="0.01">
      <BaseConnector>
        <ConnectorMoniker Name="AssociationConnector" />
      </BaseConnector>
    </Connector>
    <Connector Id="c4e2b260-9009-4993-9160-a99ec9c936bf" Description="" Name="CompositionConnector" DisplayName="Composition Connector" Namespace="VisualHibernations" FixedTooltipText="Composition Connector" Color="113, 111, 110" SourceEndStyle="FilledDiamond" Thickness="0.01">
      <BaseConnector>
        <ConnectorMoniker Name="AssociationConnector" />
      </BaseConnector>
    </Connector>
    <Connector Id="52c21f85-0314-4843-a59a-c2e77514f176" Description="" Name="MultipleAssociationRoleConnector" DisplayName="Multiple Association Role Connector" Namespace="VisualHibernations" FixedTooltipText="Multiple Association Role Connector" Color="113, 111, 110" Thickness="0.01">
      <ConnectorHasDecorators Position="TargetBottom" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="TargetMultiplicity" DisplayName="Target Multiplicity" DefaultText="TargetMultiplicity" />
      </ConnectorHasDecorators>
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="TargetRoleName" DisplayName="Target Role Name" DefaultText="TargetRoleName" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="f6c86e33-d1cf-4d3a-9dfc-6228b8f74819" Description="" Name="AssociationClassConnector" DisplayName="Association Class Connector" Namespace="VisualHibernations" FixedTooltipText="Association Class Connector" Color="DarkGray" DashStyle="Dash" Thickness="0.01" />
    <Connector Id="958c7fab-5952-4745-af74-ca3d13ccf2a2" Description="" Name="GeneralizationConnector" DisplayName="Generalization Connector" Namespace="VisualHibernations" FixedTooltipText="Generalization Connector" Color="113, 111, 110" SourceEndStyle="HollowArrow" Thickness="0.01" />
    <Connector Id="d305e623-1fa0-4922-bb75-b791d0a38b83" Description="" Name="ImplementationConnector" DisplayName="Implementation Connector" Namespace="VisualHibernations" FixedTooltipText="Implementation Connector" Color="113, 111, 110" DashStyle="Dash" SourceEndStyle="HollowArrow" Thickness="0.01" />
    <Connector Id="9d0b8a35-6929-4ccd-a2f4-662e83d72594" Description="" Name="CommentConnector" DisplayName="Comment Connector" Namespace="VisualHibernations" FixedTooltipText="Comment Connector" Color="113, 111, 110" DashStyle="Dot" Thickness="0.01" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="VisualHibernationsSerializationBehavior" Namespace="VisualHibernations">
    <ClassData>
      <XmlClassData TypeName="NamedElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="namedElementMoniker" ElementName="namedElement" MonikerTypeName="NamedElementMoniker">
        <DomainClassMoniker Name="NamedElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="NamedElement/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Association" MonikerAttributeName="" SerializeId="true" MonikerElementName="associationMoniker" ElementName="association" MonikerTypeName="AssociationMoniker">
        <DomainRelationshipMoniker Name="Association" />
        <ElementData>
          <XmlPropertyData XmlName="sourceMultiplicity">
            <DomainPropertyMoniker Name="Association/SourceMultiplicity" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="sourceRoleName">
            <DomainPropertyMoniker Name="Association/SourceRoleName" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="targetMultiplicity">
            <DomainPropertyMoniker Name="Association/TargetMultiplicity" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="targetRoleName">
            <DomainPropertyMoniker Name="Association/TargetRoleName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClassHasAttributes" MonikerAttributeName="" SerializeId="true" MonikerElementName="classHasAttributesMoniker" ElementName="classHasAttributes" MonikerTypeName="ClassHasAttributesMoniker">
        <DomainRelationshipMoniker Name="ClassHasAttributes" />
      </XmlClassData>
      <XmlClassData TypeName="ModelRootHasComments" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootHasCommentsMoniker" ElementName="modelRootHasComments" MonikerTypeName="ModelRootHasCommentsMoniker">
        <DomainRelationshipMoniker Name="ModelRootHasComments" />
      </XmlClassData>
      <XmlClassData TypeName="ClassHasOperations" MonikerAttributeName="" SerializeId="true" MonikerElementName="classHasOperationsMoniker" ElementName="classHasOperations" MonikerTypeName="ClassHasOperationsMoniker">
        <DomainRelationshipMoniker Name="ClassHasOperations" />
      </XmlClassData>
      <XmlClassData TypeName="Generalization" MonikerAttributeName="" SerializeId="true" MonikerElementName="generalizationMoniker" ElementName="generalization" MonikerTypeName="GeneralizationMoniker">
        <DomainRelationshipMoniker Name="Generalization" />
        <ElementData>
          <XmlPropertyData XmlName="discriminator">
            <DomainPropertyMoniker Name="Generalization/Discriminator" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InterfaceHasOperation" MonikerAttributeName="" SerializeId="true" MonikerElementName="interfaceHasOperationMoniker" ElementName="interfaceHasOperation" MonikerTypeName="InterfaceHasOperationMoniker">
        <DomainRelationshipMoniker Name="InterfaceHasOperation" />
      </XmlClassData>
      <XmlClassData TypeName="MultipleAssociationRole" MonikerAttributeName="" SerializeId="true" MonikerElementName="multipleAssociationRoleMoniker" ElementName="multipleAssociationRole" MonikerTypeName="MultipleAssociationRoleMoniker">
        <DomainRelationshipMoniker Name="MultipleAssociationRole" />
        <ElementData>
          <XmlPropertyData XmlName="multiplicity">
            <DomainPropertyMoniker Name="MultipleAssociationRole/Multiplicity" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="roleName">
            <DomainPropertyMoniker Name="MultipleAssociationRole/RoleName" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AssociationClassRelationship" MonikerAttributeName="" SerializeId="true" MonikerElementName="associationClassRelationshipMoniker" ElementName="associationClassRelationship" MonikerTypeName="AssociationClassRelationshipMoniker">
        <DomainRelationshipMoniker Name="AssociationClassRelationship" />
      </XmlClassData>
      <XmlClassData TypeName="ModelRootHasTypes" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootHasTypesMoniker" ElementName="modelRootHasTypes" MonikerTypeName="ModelRootHasTypesMoniker">
        <DomainRelationshipMoniker Name="ModelRootHasTypes" />
      </XmlClassData>
      <XmlClassData TypeName="CommentReferencesSubjects" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentReferencesSubjectsMoniker" ElementName="commentReferencesSubjects" MonikerTypeName="CommentReferencesSubjectsMoniker">
        <DomainRelationshipMoniker Name="CommentReferencesSubjects" />
      </XmlClassData>
      <XmlClassData TypeName="Implementation" MonikerAttributeName="" SerializeId="true" MonikerElementName="implementationMoniker" ElementName="implementation" MonikerTypeName="ImplementationMoniker">
        <DomainRelationshipMoniker Name="Implementation" />
      </XmlClassData>
      <XmlClassData TypeName="ModelRoot" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelRootMoniker" ElementName="modelRoot" MonikerTypeName="ModelRootMoniker">
        <DomainClassMoniker Name="ModelRoot" />
        <ElementData>
          <XmlRelationshipData RoleElementName="comments">
            <DomainRelationshipMoniker Name="ModelRootHasComments" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="types">
            <DomainRelationshipMoniker Name="ModelRootHasTypes" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ModelClass" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelClassMoniker" ElementName="modelClass" MonikerTypeName="ModelClassMoniker">
        <DomainClassMoniker Name="ModelClass" />
        <ElementData>
          <XmlPropertyData XmlName="kind">
            <DomainPropertyMoniker Name="ModelClass/Kind" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="isAbstract">
            <DomainPropertyMoniker Name="ModelClass/IsAbstract" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="unidirectionalTargets">
            <DomainRelationshipMoniker Name="UnidirectionalAssociation" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="attributes">
            <DomainRelationshipMoniker Name="ClassHasAttributes" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="operations">
            <DomainRelationshipMoniker Name="ClassHasOperations" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="subclasses">
            <DomainRelationshipMoniker Name="Generalization" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="bidirectionalTargets">
            <DomainRelationshipMoniker Name="BidirectionalAssociation" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="aggregationTargets">
            <DomainRelationshipMoniker Name="Aggregation" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="compositionTargets">
            <DomainRelationshipMoniker Name="Composition" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="Association" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ModelAttribute" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelAttributeMoniker" ElementName="modelAttribute" MonikerTypeName="ModelAttributeMoniker">
        <DomainClassMoniker Name="ModelAttribute" />
        <ElementData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="ModelAttribute/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="initialValue">
            <DomainPropertyMoniker Name="ModelAttribute/InitialValue" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="multiplicity">
            <DomainPropertyMoniker Name="ModelAttribute/Multiplicity" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Comment" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentMoniker" ElementName="comment" MonikerTypeName="CommentMoniker">
        <DomainClassMoniker Name="Comment" />
        <ElementData>
          <XmlPropertyData XmlName="text">
            <DomainPropertyMoniker Name="Comment/Text" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="subjects">
            <DomainRelationshipMoniker Name="CommentReferencesSubjects" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Operation" MonikerAttributeName="" SerializeId="true" MonikerElementName="operationMoniker" ElementName="operation" MonikerTypeName="OperationMoniker">
        <DomainClassMoniker Name="Operation" />
        <ElementData>
          <XmlPropertyData XmlName="signature">
            <DomainPropertyMoniker Name="Operation/Signature" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="concurrency">
            <DomainPropertyMoniker Name="Operation/Concurrency" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="precondition">
            <DomainPropertyMoniker Name="Operation/Precondition" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="postcondition">
            <DomainPropertyMoniker Name="Operation/Postcondition" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ClassOperation" MonikerAttributeName="" SerializeId="true" MonikerElementName="classOperationMoniker" ElementName="classOperation" MonikerTypeName="ClassOperationMoniker">
        <DomainClassMoniker Name="ClassOperation" />
        <ElementData>
          <XmlPropertyData XmlName="isAbstract">
            <DomainPropertyMoniker Name="ClassOperation/IsAbstract" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ModelInterface" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelInterfaceMoniker" ElementName="modelInterface" MonikerTypeName="ModelInterfaceMoniker">
        <DomainClassMoniker Name="ModelInterface" />
        <ElementData>
          <XmlRelationshipData RoleElementName="operations">
            <DomainRelationshipMoniker Name="InterfaceHasOperation" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="implementors">
            <DomainRelationshipMoniker Name="Implementation" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InterfaceOperation" MonikerAttributeName="" SerializeId="true" MonikerElementName="interfaceOperationMoniker" ElementName="interfaceOperation" MonikerTypeName="InterfaceOperationMoniker">
        <DomainClassMoniker Name="InterfaceOperation" />
      </XmlClassData>
      <XmlClassData TypeName="MultipleAssociation" MonikerAttributeName="" SerializeId="true" MonikerElementName="multipleAssociationMoniker" ElementName="multipleAssociation" MonikerTypeName="MultipleAssociationMoniker">
        <DomainClassMoniker Name="MultipleAssociation" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="types">
            <DomainRelationshipMoniker Name="MultipleAssociationRole" />
          </XmlRelationshipData>
          <XmlRelationshipData RoleElementName="associationClass">
            <DomainRelationshipMoniker Name="AssociationClassRelationship" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ModelType" MonikerAttributeName="" SerializeId="true" MonikerElementName="modelTypeMoniker" ElementName="modelType" MonikerTypeName="ModelTypeMoniker">
        <DomainClassMoniker Name="ModelType" />
      </XmlClassData>
      <XmlClassData TypeName="ClassModelElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="classModelElementMoniker" ElementName="classModelElement" MonikerTypeName="ClassModelElementMoniker">
        <DomainClassMoniker Name="ClassModelElement" />
        <ElementData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="ClassModelElement/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="UnidirectionalAssociation" MonikerAttributeName="" SerializeId="true" MonikerElementName="unidirectionalAssociationMoniker" ElementName="unidirectionalAssociation" MonikerTypeName="UnidirectionalAssociationMoniker">
        <DomainRelationshipMoniker Name="UnidirectionalAssociation" />
      </XmlClassData>
      <XmlClassData TypeName="BidirectionalAssociation" MonikerAttributeName="" SerializeId="true" MonikerElementName="bidirectionalAssociationMoniker" ElementName="bidirectionalAssociation" MonikerTypeName="BidirectionalAssociationMoniker">
        <DomainRelationshipMoniker Name="BidirectionalAssociation" />
      </XmlClassData>
      <XmlClassData TypeName="Aggregation" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregationMoniker" ElementName="aggregation" MonikerTypeName="AggregationMoniker">
        <DomainRelationshipMoniker Name="Aggregation" />
      </XmlClassData>
      <XmlClassData TypeName="Composition" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositionMoniker" ElementName="composition" MonikerTypeName="CompositionMoniker">
        <DomainRelationshipMoniker Name="Composition" />
      </XmlClassData>
      <XmlClassData TypeName="ClassShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="classShapeMoniker" ElementName="classShape" MonikerTypeName="ClassShapeMoniker">
        <CompartmentShapeMoniker Name="ClassShape" />
      </XmlClassData>
      <XmlClassData TypeName="InterfaceShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="interfaceShapeMoniker" ElementName="interfaceShape" MonikerTypeName="InterfaceShapeMoniker">
        <CompartmentShapeMoniker Name="InterfaceShape" />
      </XmlClassData>
      <XmlClassData TypeName="CommentBoxShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentBoxShapeMoniker" ElementName="commentBoxShape" MonikerTypeName="CommentBoxShapeMoniker">
        <GeometryShapeMoniker Name="CommentBoxShape" />
      </XmlClassData>
      <XmlClassData TypeName="MultipleAssociationShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="multipleAssociationShapeMoniker" ElementName="multipleAssociationShape" MonikerTypeName="MultipleAssociationShapeMoniker">
        <ImageShapeMoniker Name="MultipleAssociationShape" />
      </XmlClassData>
      <XmlClassData TypeName="AssociationConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="associationConnectorMoniker" ElementName="associationConnector" MonikerTypeName="AssociationConnectorMoniker">
        <ConnectorMoniker Name="AssociationConnector" />
      </XmlClassData>
      <XmlClassData TypeName="UnidirectionalConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="unidirectionalConnectorMoniker" ElementName="unidirectionalConnector" MonikerTypeName="UnidirectionalConnectorMoniker">
        <ConnectorMoniker Name="UnidirectionalConnector" />
      </XmlClassData>
      <XmlClassData TypeName="BidirectionalConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="bidirectionalConnectorMoniker" ElementName="bidirectionalConnector" MonikerTypeName="BidirectionalConnectorMoniker">
        <ConnectorMoniker Name="BidirectionalConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AggregationConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregationConnectorMoniker" ElementName="aggregationConnector" MonikerTypeName="AggregationConnectorMoniker">
        <ConnectorMoniker Name="AggregationConnector" />
      </XmlClassData>
      <XmlClassData TypeName="CompositionConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="compositionConnectorMoniker" ElementName="compositionConnector" MonikerTypeName="CompositionConnectorMoniker">
        <ConnectorMoniker Name="CompositionConnector" />
      </XmlClassData>
      <XmlClassData TypeName="MultipleAssociationRoleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="multipleAssociationRoleConnectorMoniker" ElementName="multipleAssociationRoleConnector" MonikerTypeName="MultipleAssociationRoleConnectorMoniker">
        <ConnectorMoniker Name="MultipleAssociationRoleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AssociationClassConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="associationClassConnectorMoniker" ElementName="associationClassConnector" MonikerTypeName="AssociationClassConnectorMoniker">
        <ConnectorMoniker Name="AssociationClassConnector" />
      </XmlClassData>
      <XmlClassData TypeName="GeneralizationConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="generalizationConnectorMoniker" ElementName="generalizationConnector" MonikerTypeName="GeneralizationConnectorMoniker">
        <ConnectorMoniker Name="GeneralizationConnector" />
      </XmlClassData>
      <XmlClassData TypeName="ImplementationConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="implementationConnectorMoniker" ElementName="implementationConnector" MonikerTypeName="ImplementationConnectorMoniker">
        <ConnectorMoniker Name="ImplementationConnector" />
      </XmlClassData>
      <XmlClassData TypeName="CommentConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="commentConnectorMoniker" ElementName="commentConnector" MonikerTypeName="CommentConnectorMoniker">
        <ConnectorMoniker Name="CommentConnector" />
      </XmlClassData>
      <XmlClassData TypeName="VisualHibernationsDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="visualHibernationsDiagramMoniker" ElementName="visualHibernationsDiagram" MonikerTypeName="VisualHibernationsDiagramMoniker">
        <DiagramMoniker Name="VisualHibernationsDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="VisualHibernationsExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="UnidirectionalAssociationBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="UnidirectionalAssociation" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="BidirectionalAssociationBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="BidirectionalAssociation" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AggregationBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Aggregation" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="CompositionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Composition" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="GeneralizationBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Generalization" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Implementation" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelInterface" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelType" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="MultipleAssociationRoleBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="MultipleAssociationRole" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MultipleAssociation" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AssociationClassRelationshipBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AssociationClassRelationship" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MultipleAssociation" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="CommentReferencesSubjectsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CommentReferencesSubjects" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Comment" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelClass" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ModelInterface" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="MultipleAssociation" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="bdd6ff9c-9862-434b-82af-dc6e8cd5a56a" Description="" Name="VisualHibernationsDiagram" DisplayName="Class Diagram" Namespace="VisualHibernations">
    <Class>
      <DomainClassMoniker Name="ModelRoot" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="ModelClass" />
        <ParentElementPath>
          <DomainPath>ModelRootHasTypes.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ClassShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ClassShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="ClassShape/AttributesCompartment" />
          <ElementsDisplayed>
            <DomainPath>ClassHasAttributes.Attributes/!Attribute</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="ClassShape/OperationsCompartment" />
          <ElementsDisplayed>
            <DomainPath>ClassHasOperations.Operations/!Operation</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="ModelInterface" />
        <ParentElementPath>
          <DomainPath>ModelRootHasTypes.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="InterfaceShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="InterfaceShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="InterfaceShape/OperationsCompartment" />
          <ElementsDisplayed>
            <DomainPath>InterfaceHasOperation.Operations/!Operation</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Comment" />
        <ParentElementPath>
          <DomainPath>ModelRootHasComments.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CommentBoxShape/Comment" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Comment/Text" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CommentBoxShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="MultipleAssociation" />
        <ParentElementPath>
          <DomainPath>ModelRootHasTypes.ModelRoot/!ModelRoot</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="MultipleAssociationShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="BidirectionalConnector" />
        <DomainRelationshipMoniker Name="BidirectionalAssociation" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="UnidirectionalConnector" />
        <DomainRelationshipMoniker Name="UnidirectionalAssociation" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="AggregationConnector" />
        <DomainRelationshipMoniker Name="Aggregation" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="CompositionConnector" />
        <DomainRelationshipMoniker Name="Composition" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetMultiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/SourceRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/SourceRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AssociationConnector/TargetRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Association/TargetRoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MultipleAssociationRoleConnector" />
        <DomainRelationshipMoniker Name="MultipleAssociationRole" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="MultipleAssociationRoleConnector/TargetMultiplicity" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MultipleAssociationRole/Multiplicity" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="MultipleAssociationRoleConnector/TargetRoleName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="MultipleAssociationRole/RoleName" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="AssociationClassConnector" />
        <DomainRelationshipMoniker Name="AssociationClassRelationship" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="CommentConnector" />
        <DomainRelationshipMoniker Name="CommentReferencesSubjects" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="GeneralizationConnector" />
        <DomainRelationshipMoniker Name="Generalization" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ImplementationConnector" />
        <DomainRelationshipMoniker Name="Implementation" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="ndmx" EditorGuid="70c2cbe7-f228-4467-84cd-e16828b0a281">
    <RootClass>
      <DomainClassMoniker Name="ModelRoot" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="VisualHibernationsSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Class Diagrams">
      <ElementTool Name="ModelClass" ToolboxIcon="Resources\ClassTool.bmp" Caption="Class" Tooltip="Create a Class" HelpKeyword="ModelClassF1Keyword">
        <DomainClassMoniker Name="ModelClass" />
      </ElementTool>
      <ElementTool Name="Attribute" ToolboxIcon="resources\attributetool.bmp" Caption="Attribute" Tooltip="Create an Attribute on a Class" HelpKeyword="AttributeF1Keyword">
        <DomainClassMoniker Name="ModelAttribute" />
      </ElementTool>
      <ElementTool Name="ClassOperation" ToolboxIcon="resources\operationtool.bmp" Caption="Class Operation" Tooltip="Create an Operation on a Class" HelpKeyword="ClassOperationF1Keyword">
        <DomainClassMoniker Name="ClassOperation" />
      </ElementTool>
      <ElementTool Name="ModelInterface" ToolboxIcon="Resources\InterfaceTool.bmp" Caption="Interface" Tooltip="Create an Interface" HelpKeyword="ModelInterfaceF1Keyword">
        <DomainClassMoniker Name="ModelInterface" />
      </ElementTool>
      <ElementTool Name="InterfaceOperation" ToolboxIcon="resources\interfaceoperationtool.bmp" Caption="Interface Operation" Tooltip="Create an Operation on an Interface" HelpKeyword="InterfaceOperationF1Keyword">
        <DomainClassMoniker Name="InterfaceOperation" />
      </ElementTool>
      <ConnectionTool Name="UnidirectionalAssociation" ToolboxIcon="Resources\UnidirectionTool.bmp" Caption="Unidirectional Association" Tooltip="Create a Unidirectional link" HelpKeyword="ConnectUnidirectionalAssociationF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/UnidirectionalAssociationBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="BidirectionalAssociation" ToolboxIcon="Resources\AssociationTool.bmp" Caption="Bidirectional Association" Tooltip="Create a Bidirectional link" HelpKeyword="ConnectBidirectionalAssociationF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/BidirectionalAssociationBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Aggregation" ToolboxIcon="Resources\AggregationTool.bmp" Caption="Aggregation" Tooltip="Create an Aggregation link" HelpKeyword="AggregationF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/AggregationBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Composition" ToolboxIcon="Resources\CompositeTool.bmp" Caption="Composition" Tooltip="Create a Composition link" HelpKeyword="CompositionF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/CompositionBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Generalization" ToolboxIcon="resources\generalizationtool.bmp" Caption="Inheritance" Tooltip="Create a Generalization or Implementation link" HelpKeyword="GeneralizationF1Keyword" ReversesDirection="true">
        <ConnectionBuilderMoniker Name="VisualHibernations/GeneralizationBuilder" />
      </ConnectionTool>
      <ElementTool Name="MultipleAssociation" ToolboxIcon="resources\multipleassociationtool.bmp" Caption="Multiple Association" Tooltip="Create a Multiple Association element" HelpKeyword="MultipleAssociationF1Keyword">
        <DomainClassMoniker Name="MultipleAssociation" />
      </ElementTool>
      <ConnectionTool Name="MultipleAssociationRole" ToolboxIcon="Resources\AssociationLinkTool.bmp" Caption="Multiple Association Link" Tooltip="Create a Multiple Association link" HelpKeyword="MultipleAssociationRoleF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/MultipleAssociationRoleBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="AssociationClassRelationship" ToolboxIcon="Resources\AssociationClassTool.bmp" Caption="Association Class" Tooltip="Identify a Multiple Association with a Class" HelpKeyword="AssociationClassRelationshipF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/AssociationClassRelationshipBuilder" />
      </ConnectionTool>
      <ElementTool Name="Comment" ToolboxIcon="resources\commenttool.bmp" Caption="Comment" Tooltip="Create a Comment" HelpKeyword="CommentF1Keyword">
        <DomainClassMoniker Name="Comment" />
      </ElementTool>
      <ConnectionTool Name="CommentsReferenceTypes" ToolboxIcon="resources\commentlinktool.bmp" Caption="Comment Link" Tooltip="Link a comment to an element" HelpKeyword="CommentsReferenceTypesF1Keyword">
        <ConnectionBuilderMoniker Name="VisualHibernations/CommentReferencesSubjectsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="VisualHibernationsDiagram" />
  </Designer>
  <Explorer ExplorerGuid="4b69a8b7-2ed6-4411-bbd3-4fe76646faff" Title="">
    <ExplorerBehaviorMoniker Name="VisualHibernations/VisualHibernationsExplorer" />
  </Explorer>
</Dsl>