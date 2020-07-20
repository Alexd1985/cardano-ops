{
  legacyCoreNodes = [];

  legacyRelayNodes = [];

  byronProxies = [];

  coreNodes = [
    {
      name = "c-a-1";
      region = "eu-central-1";
      producers = [ "c-a-2" "c-a-3" "c-b-1" "c-c-1" "e-a-1" ];
      org = "IOHK";
      nodeId = 1;
    }
    {
      name = "c-a-2";
      region = "eu-central-1";
      producers = [ "c-a-1" "c-a-3" "c-b-2" "c-c-2" "e-a-2" ];
      org = "IOHK";
      nodeId = 2;
    }
    {
      name = "c-a-3";
      region = "eu-central-1";
      producers = [ "c-a-1" "c-a-2" "e-b-3" "e-c-3" "e-a-3" ];
      org = "IOHK";
      nodeId = 3;
    }
    {
      name = "c-b-1";
      region = "ap-northeast-1";
      producers = [ "c-b-2" "c-a-1" "c-c-1" "e-b-1" ];
      org = "Emurgo";
      nodeId = 4;
    }
    {
      name = "c-b-2";
      region = "ap-northeast-1";
      producers = [ "c-b-1" "c-a-2" "c-c-2" "e-b-1" ];
      org = "Emurgo";
      nodeId = 5;
    }
    {
      name = "c-c-1";
      region = "ap-southeast-1";
      producers = [ "c-c-2" "c-a-1" "c-b-1" "e-c-1" ];
      org = "CF";
      nodeId = 6;
    }
    {
      name = "c-c-2";
      region = "ap-southeast-1";
      producers = [ "c-c-1" "c-a-2" "c-b-2" "e-c-1" ];
      org = "CF";
      nodeId = 7;
    }
  ];

  relayNodes = [
    # Group 1 (original group)
    {
      name = "e-a-1";
      region = "eu-central-1";
      org = "IOHK";
      nodeId = 8;
      producers = ["c-a-1" "e-a-2" "e-a-3" "e-b-1" "e-c-1"];
    }
    {
      name = "e-b-1";
      region = "ap-northeast-1";
      org = "IOHK";
      nodeId = 9;
      producers = ["c-b-1" "e-b-2" "e-b-3" "e-a-1" "e-c-1"];
    }
    {
      name = "e-c-1";
      region = "ap-southeast-1";
      org = "IOHK";
      nodeId = 10;
      producers = ["c-c-1" "e-c-2" "e-c-3" "e-a-1" "e-b-1"];
    }

    # Likely will want to update the producers of all these nodes once created
    # Group 2

    {
      name = "e-a-2";
      region = "eu-central-1";
      org = "IOHK";
      nodeId = 21;
      producers = ["c-a-2" "e-a-1" "e-a-3" "e-b-2" "e-c-2"];
    }
    {
      name = "e-b-2";
      region = "ap-northeast-1";
      org = "IOHK";
      nodeId = 22;
      producers = ["c-b-2" "e-b-1" "e-b-3" "e-a-2" "e-c-2"];
    }
    {
      name = "e-c-2";
      region = "ap-southeast-1";
      org = "IOHK";
      nodeId = 23;
      producers = ["c-c-2" "e-c-1" "e-c-3" "e-a-2" "e-b-2"];
    }

    {
      name = "e-a-3";
      region = "eu-central-1";
      org = "IOHK";
      nodeId = 24;
      producers = ["c-a-3" "e-a-1" "e-a-2" "e-b-3" "e-c-3"];
    }
    {
      name = "e-b-3";
      region = "ap-northeast-1";
      org = "IOHK";
      nodeId = 25;
      producers = ["e-b-1" "e-b-2" "e-a-3" "e-c-3"];
    }
    {
      name = "e-c-3";
      region = "ap-southeast-1";
      org = "IOHK";
      nodeId = 26;
      producers = ["e-c-2" "e-a-3" "e-b-3"];
    }

    {
      name = "e-a-4";
      region = "eu-central-1";
      org = "IOHK";
      nodeId = 27;
      producers = ["e-a-2" "e-a-3" "e-b-4" "e-c-4"];
    }
    {
      name = "e-b-4";
      region = "ap-northeast-1";
      org = "IOHK";
      nodeId = 28;
      producers = ["e-b-2" "e-b-3" "e-a-4" "e-c-4"];
    }
    {
      name = "e-c-4";
      region = "ap-southeast-1";
      org = "IOHK";
      nodeId = 29;
      producers = ["e-c-2" "e-c-3" "e-a-4" "e-b-4"];
    }

    # Group 3 -- not deployed yet

    #{
    #  name = "e-a-5";
    #  region = "eu-central-1";
    #  org = "IOHK";
    #  nodeId = 30;
    #  producers = ["c-a-2" "e-b-1" "e-c-1"];
    #}
    #{
    #  name = "e-b-5";
    #  region = "ap-northeast-1";
    #  org = "IOHK";
    #  nodeId = 31;
    #  producers = ["c-b-2" "e-a-1" "e-c-1"];
    #}
    #{
    #  name = "e-c-5";
    #  region = "ap-southeast-1";
    #  org = "IOHK";
    #  nodeId = 32;
    #  producers = ["c-c-2" "e-a-1" "e-b-1"];
    #}

    #{
    #  name = "e-a-6";
    #  region = "eu-central-1";
    #  org = "IOHK";
    #  nodeId = 33;
    #  producers = ["c-a-2" "e-b-1" "e-c-1"];
    #}
    #{
    #  name = "e-b-6";
    #  region = "ap-northeast-1";
    #  org = "IOHK";
    #  nodeId = 34;
    #  producers = ["c-b-2" "e-a-1" "e-c-1"];
    #}
    #{
    #  name = "e-c-6";
    #  region = "ap-southeast-1";
    #  org = "IOHK";
    #  nodeId = 35;
    #  producers = ["c-c-2" "e-a-1" "e-b-1"];
    #}

    #{
    #  name = "e-a-7";
    #  region = "eu-central-1";
    #  org = "IOHK";
    #  nodeId = 36;
    #  producers = ["c-a-2" "e-b-1" "e-c-1"];
    #}
    #{
    #  name = "e-b-7";
    #  region = "ap-northeast-1";
    #  org = "IOHK";
    #  nodeId = 37;
    #  producers = ["c-b-2" "e-a-1" "e-c-1"];
    #}
    #{
    #  name = "e-c-7";
    #  region = "ap-southeast-1";
    #  org = "IOHK";
    #  nodeId = 38;
    #  producers = ["c-c-2" "e-a-1" "e-b-1"];
    #}
  ];
}
