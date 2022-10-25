import { reactShinyInput } from 'reactR';
import { Header } from "@us-epa-camd/easey-design-system";

function epaHeadNavigation({ configuration, value }) {
  return (
    <>
      <div className={"topHeader"}>
        <div className="epa-header">
          <Header environment={value} />
        </div>
      </div>
    </>
  );
}

export default function initEpaHeadNavigation(){
  reactShinyInput(
    '.epaSlimHeader',
    'epaRShinyTemplate.epaSlimHeader',
    epaHeadNavigation
  );
}
